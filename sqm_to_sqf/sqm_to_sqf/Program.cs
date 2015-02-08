using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net.Mime;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace sqm_to_sqf
{
    class Vector3
    {
        public float X { get; set; }
        public float Y { get; set; }
        public float Z { get; set; }

        public Vector3(float x, float y, float z)
        {
            X = x;
            Y = y;
            Z = z;
        }

        public Vector3()
        {
            
        }

        public override string ToString()
        {
            NumberFormatInfo nfi = new NumberFormatInfo();
            nfi.NumberDecimalSeparator = ".";

            return X.ToString(nfi) + ", " + Y.ToString(nfi) + ", " + Z.ToString(nfi);
        }
    }

    class Unit
    {
        public Vector3 Position { get; set; }
        public float Azimut { get; set; }
        public int Id { get; set; }
        public string Side { get; set; }
        public string Vehicle { get; set; }

        public Unit(Vector3 position, float azimut, int id, string side, string vehicle)
        {
            Position = position;
            Azimut = azimut;
            Id = id;
            Side = side;
            Vehicle = vehicle;
        }

        public override string ToString()
        {
            return "Unit {\n\tPosition=" + Position + "\n\tAzimut=" + Azimut + "\n\tId=" + Id + "\n\tVehicle=" + Vehicle + "\n\tSide=" + Side + "\n}\n";
        }
    }

    class Program
    {
        public static List<Unit> Units = new List<Unit>(); 

        static void Main(string[] args)
        {
            var options = new Options();
            if (CommandLine.Parser.Default.ParseArguments(args, options))
            {
                // Values are available here
                if (options.Verbose) Console.WriteLine("Filename: {0}", options.InputFile);

                if (!string.IsNullOrEmpty(options.InputFile))
                {
                    Save(Parse(options), options);
                }
            }
        }

        static List<Unit> Parse(Options options)
        {
            string source = "";

            using (StreamReader sr = new StreamReader(options.InputFile))
            {
                source = sr.ReadToEnd();
            }

            //position\[\]={([0-9.\-e]+),([0-9.\-e]+),([0-9.\-e]+)};\s*\n*\s*azimut=([0-9.\-e]+);\s*\n*\s*id=([0-9]+);\s*\n*\s*side= ""EMPTY"";\s*\n*\s*vehicle=""([A-Za-z 0-9_]+)"";\s*\n*\s*skill=[0-9.\-]+;\s*\n*\s*offsetY=([0-9.\-]+)
            //position\[\]={([0-9.\-e]+),([0-9.\-e]+),([0-9.\-e]+)};\s*\n*\s*azimut=([0-9.\-e]+);\s*\n*\s*id=([0-9]+);\s*\n*\s*side= "([A-Za-z]+)";\s*\n*\s*vehicle="([A-Za-z 0-9_]+)";

            Regex re = new Regex(@"position\[\]={([0-9.\-e]+),([0-9.\-e]+),([0-9.\-e]+)};\s*\n*\s*azimut=([0-9.\-e]+);\s*\n*\s*id=([0-9]+);\s*\n*\s*side= ""([A-Za-z]+)"";\s*\n*\s*vehicle=""([A-Za-z 0-9_]+)"";", RegexOptions.Multiline);
            MatchCollection mc = re.Matches(source);

            if (options.Verbose) Console.WriteLine("Count: {0}", mc.Count);
            
            Units = new List<Unit>(mc.Count);

            for (int i = 0; i < mc.Count; i++)
            {
                if ((options.Empty && mc[i].Groups[6].Value == "EMPTY") || !options.Empty)
                {
                    float x, y, z, azimut;

                    float.TryParse(mc[i].Groups[1].Value, NumberStyles.Any, CultureInfo.InvariantCulture, out x);
                    float.TryParse(mc[i].Groups[3].Value, NumberStyles.Any, CultureInfo.InvariantCulture, out y);
                    float.TryParse(mc[i].Groups[2].Value, NumberStyles.Any, CultureInfo.InvariantCulture, out z);
                    float.TryParse(mc[i].Groups[4].Value, NumberStyles.Any, CultureInfo.InvariantCulture, out azimut);

                    Units.Add(
                        new Unit(
                            new Vector3(x, y, z),
                            azimut,
                            int.Parse(mc[i].Groups[5].Value),
                            mc[i].Groups[6].Value,
                            mc[i].Groups[7].Value
                            ));

                    if (options.Verbose) Console.WriteLine(Units[Units.Count - 1].ToString());
                }
            }

            return Units;
        }

        static void Save(List<Unit> unitList, Options options)
        {
            string result = "";

            // decimal separator "," - OMFG WHY?
            NumberFormatInfo nfi = new NumberFormatInfo();
            nfi.NumberDecimalSeparator = ".";

            for (int i = 0; i < unitList.Count; i++)
            {
                result += @"_vehicle_"+(options.Index+i)+@" = objNull;
if (true) then
{
    _this = createVehicle ["""+unitList[i].Vehicle+@""", ["+unitList[i].Position+@"], [], 0, ""CAN_COLLIDE""];
    _vehicle_" + (options.Index + i) + @" = _this;
    _this setDir " + unitList[i].Azimut.ToString(nfi)+ @";
    _this setPos [(" + unitList[i].Position.X.ToString(nfi) + @")-_centerX+_centerSpawnX, (" + unitList[i].Position.Y.ToString(nfi) + @")-_centerY+_centerSpawnY, " + unitList[i].Position.Z.ToString(nfi) + @"];
};
";
            }

            File.WriteAllText(Environment.CurrentDirectory + "\\" + options.OutputFile, result);
        }
    }
}

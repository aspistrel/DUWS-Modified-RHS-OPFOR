using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommandLine;
using CommandLine.Text;

namespace sqm_to_sqf
{
    /// <summary>
    /// Command line options
    /// </summary>
    class Options
    {
        [Option('r', "read", DefaultValue = "", Required = true, HelpText = "Input file to be processed.")]
        public string InputFile { get; set; }

        [Option('w', "write", DefaultValue = "output.sqf", HelpText = "Result file name.")]
        public string OutputFile { get; set; }

        [Option('i', "index", DefaultValue = 0, HelpText = "Start index.")]
        public int Index { get; set; }

        [Option('e', "empty", DefaultValue = false, HelpText = "Side \"EMPTY\" only?")]
        public bool Empty { get; set; }

        [Option('v', "verbose", DefaultValue = true, HelpText = "Prints all messages to standard output.")]
        public bool Verbose { get; set; }

        [HelpOption]
        public string GetUsage()
        {
            return HelpText.AutoBuild(this, (HelpText current) => HelpText.DefaultParsingErrorsHandler(this, current));
        }

    }
}

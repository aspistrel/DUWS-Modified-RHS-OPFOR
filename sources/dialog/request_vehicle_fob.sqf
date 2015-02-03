_index = lbCurSel 2122;


_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+30, _spawnPos select 1];

switch (_index) do
{
    case 0:  
    {
          if (commandpointsblu1 >= 4) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 4;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m998_w_4dr" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 1:  
    {
          if (commandpointsblu1 >= 6) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 6;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m998_w_2dr_halftop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 2:  
    {
          if (commandpointsblu1 >= 5) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 5;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1025_w" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    case 3:  
    {
          if (commandpointsblu1 >= 18) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 18;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1025_w_m2" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    
    
    case 4:  
    {
          if (commandpointsblu1 >= 8) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 8;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Truck_01_covered_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
      
    case 5:  
    {
          if (commandpointsblu1 >= 15) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 15;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Heli_Light_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 6:  
    {
          if (commandpointsblu1 >= 35) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 35;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M2A2_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 7:  
    {
          if (commandpointsblu1 >= 18) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 18;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
          _vehic = "O_Heli_Transport_04_F" createVehicle _spawnPos;
		   null = [_vehic] execVM "\a3\Air_F_Heli\Heli_Transport_04\Scripts\Heli_Transport_04_basic_black.sqf";
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
        
       
    case 8:  
    {
          if (commandpointsblu1 >= 1) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 1;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Quadbike_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
           
    
    case 9:  
    {
          if (commandpointsblu1 >= 2) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 2;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "C_Offroad_01_F" createVehicle _spawnPos;
		   sleep 1;
		   _vehic setObjectTexture [0, "#(argb,8,8,3)color(0.141,0.118,0.082,1)"];
		   _vehic animate ["Hidepolice", 1];
		   _vehic animate ["Hideservices", 1];
		   _vehic animate ["Hidebackpacks", 0];
		   _vehic animate ["Hidebumper1", 0];
		   _vehic animate ["Hidebumper2", 0];
		   _vehic animate ["Hideconstruction", 0];
		   _vehic animate ["Hidedoor1", 1];
		   _vehic animate ["Hidedoor2", 1];
		   _vehic animate ["Hidedoor3", 1];
		   _vehic animate ["Hideglass2", 1];
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 10:  
    {
          if (commandpointsblu1 >= 10) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 10;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Truck_01_fuel_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 11:  
    {
          if (commandpointsblu1 >= 10) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 10;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_UGV_01_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 12:  
    {
          if (commandpointsblu1 >= 5) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 5;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_UAV_01_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
};
publicVariable "commandpointsblu1";
//hint format["index: %1",_index];


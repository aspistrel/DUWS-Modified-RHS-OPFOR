_index = lbCurSel 2122;


_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+30, _spawnPos select 1];

_vehName = (RequestVehicleFob select _index) select 0;
_cost = (RequestVehicleFob select _index) select 1;

if (commandpoints >= _cost) then
{
    hint "Vehicle ready !";
    commandpoints = commandpoints - _cost;
    ctrlSetText [1000, format["%1",commandpoints]];
    _vehic = _vehName createVehicle _spawnPos;
}
else
{
    hint "Not enough command points";
};
/*switch (_index) do
{
    case 0:  
    {
          if (commandpoints >= 4) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 4;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m998_w_4dr" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 1:  
    {
          if (commandpoints >= 6) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 6;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m998_w_2dr_halftop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 2:  
    {
          if (commandpoints >= 5) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 5;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1025_w" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    case 3:  
    {
          if (commandpoints >= 18) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 18;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1025_w_m2" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    
    
    case 4:  
    {
          if (commandpoints >= 8) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 8;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Truck_01_covered_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
      
    case 5:  
    {
          if (commandpoints >= 15) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 15;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Heli_Light_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 6:  
    {
          if (commandpoints >= 35) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 35;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M2A2_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 7:  
    {
          if (commandpoints >= 18) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 18;
           ctrlSetText [1000, format["%1",commandpoints]];
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
          if (commandpoints >= 1) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 1;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Quadbike_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
           
    
    case 9:  
    {
          if (commandpoints >= 2) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 2;
           ctrlSetText [1000, format["%1",commandpoints]];
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
          if (commandpoints >= 10) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 10;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Truck_01_fuel_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 11:  
    {
          if (commandpoints >= 10) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 10;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_UGV_01_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 12:  
    {
          if (commandpoints >= 5) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 5;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_UAV_01_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
};*/

publicVariable "commandpoints";
//hint format["index: %1",_index];


_index = lbCurSel 2102;


_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+30, _spawnPos select 1];

_vehName = (RequestVehicle select _index) select 0;
_cost = (RequestVehicle select _index) select 1;

if (commandpoints >= _cost) then
{
    hint "Vehicle ready !";
    commandpoints = commandpoints - _cost;
    ctrlSetText [1000, format["%1",commandpoints]];
    _vehic = _vehName createVehicle _spawnPos;

    if(_vehName == "B_UAV_02_F" || _vehName == "B_UAV_02_CAS_F" || _vehName == "B_UAV_01_F") then
    {
        createVehicleCrew _vehic;
    };

    if(_vehName == "rhs_2s3_tv" || _vehName == "rhsusf_m109_usarmy" || _vehName == "B_MBT_01_mlrs_F") then
    {
        _vehic addEventHandler ["Fired", {[(getPos (_this select 0)), PlayableSide] call ArtyEvent;}];
    };

}
else
{
    hint "Not enough command points";
};
/*
switch (_index) do
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
          if (commandpoints >= 4) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 4;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m998_w_4dr_halftop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 2:  
    {
          if (commandpoints >= 4) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 4;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m998_w_4dr_fulltop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    case 3:  
    {
          if (commandpoints >= 6) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 6;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m998_w_2dr" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    case 4:  
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
    
    case 5:  
    {
          if (commandpoints >= 6) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 6;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m998_w_2dr_fulltop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 6:  
    {
          if (commandpoints >= 6) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 6;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1025_w" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 7:  
    {
          if (commandpoints >= 12) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 12;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1025_w_m2" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 8:  
    {
          if (commandpoints >= 18) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 18;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1025_w_mk19" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 9:  
    {
          if (commandpoints >= 8) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 8;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Truck_01_transport_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 10:  
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
	
	case 11:  
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
    
    case 12:  
    {
          if (commandpoints >= 10) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 10;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Truck_01_medical_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 13:  
    {
          if (commandpoints >= 10) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 10;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Truck_01_Repair_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 14:  
    {
          if (commandpoints >= 10) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 10;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Truck_01_ammo_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
    
    case 15:  
    {
          if (commandpoints >= 28) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 28;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_APC_Tracked_01_CRV_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
    case 16:  
    {
          if (commandpoints >= 8) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 8;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_MRAP_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

    case 17:  
    {
          if (commandpoints >= 14) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 14;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_MRAP_01_hmg_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
    case 18:  
    {
          if (commandpoints >= 20) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 20;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_MRAP_01_gmg_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };   

    case 19:  
    {
          if (commandpoints >= 20) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 20;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m113_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
	
case 20:  
    {
          if (commandpoints >= 30) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 30;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M2A2_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

case 21:  
    {
          if (commandpoints >= 32) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 32;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M2A2_BUSKI_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
case 22:  
    {
          if (commandpoints >= 34) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 34;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M2A3_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

case 23:  
    {
          if (commandpoints >= 36) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 36;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M2A3_BUSKI_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

case 24:  
    {
          if (commandpoints >= 38) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 38;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M2A3_BUSKIII_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 25:  
    {
          if (commandpoints >= 32) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 32;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "RHS_M6_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
	
case 26:  
    {
          if (commandpoints >= 38) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 38;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1a1aimwd_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 27:  
    {
          if (commandpoints >= 40) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 40;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1a1aim_tuski_wd" createVehicle _spawnPos; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
	
case 28:  
    {
          if (commandpoints >= 44) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 44;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1a2sep1wd_usarmy" createVehicle _spawnPos; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 29:  
    {
          if (commandpoints >= 50) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 50;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m1a2sep1tuskiwd_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 30:  
    {
          if (commandpoints >= 75) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 75;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhsusf_m109_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 31:  
    {
          if (commandpoints >= 75) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 75;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_MBT_01_mlrs_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 32:  
    {
          if (commandpoints >= 18) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 18;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Heli_Light_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 33:  
    {
          if (commandpoints >= 28) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 28;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_Heli_Light_01_armed_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 34:  
    {
          if (commandpoints >= 45) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 45;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhs_ah64d_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 35:  
    {
          if (commandpoints >= 28) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 28;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhs_ch_47f" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 36:  
    {
          if (commandpoints >= 22) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 22;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhs_uh60m" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 37:  
    {
          if (commandpoints >= 24) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 24;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhs_uh60m_mev" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 38:  
    {
          if (commandpoints >= 45) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 5;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "rhs_a10" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 39:  
    {
          if (commandpoints >= 15) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 15;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_UAV_02_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 40:  
    {
          if (commandpoints >= 15) then 
          {
           hint "Vehicle ready !";
           commandpoints = commandpoints - 15;
           ctrlSetText [1000, format["%1",commandpoints]];
           _vehic = "B_UAV_02_CAS_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
case 31:  
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


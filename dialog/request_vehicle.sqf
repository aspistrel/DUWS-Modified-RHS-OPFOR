_index = lbCurSel 2102;


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
          if (commandpointsblu1 >= 4) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 4;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m998_w_4dr_halftop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 2:  
    {
          if (commandpointsblu1 >= 4) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 4;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m998_w_4dr_fulltop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    case 3:  
    {
          if (commandpointsblu1 >= 6) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 6;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m998_w_2dr" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

    case 4:  
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
    
    case 5:  
    {
          if (commandpointsblu1 >= 6) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 6;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m998_w_2dr_fulltop" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 6:  
    {
          if (commandpointsblu1 >= 6) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 6;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1025_w" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 7:  
    {
          if (commandpointsblu1 >= 12) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 12;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1025_w_m2" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 8:  
    {
          if (commandpointsblu1 >= 18) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 18;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1025_w_mk19" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 9:  
    {
          if (commandpointsblu1 >= 8) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 8;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Truck_01_transport_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 10:  
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
	
	case 11:  
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
    
    case 12:  
    {
          if (commandpointsblu1 >= 10) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 10;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Truck_01_medical_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
	case 13:  
    {
          if (commandpointsblu1 >= 10) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 10;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Truck_01_Repair_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
    
    case 14:  
    {
          if (commandpointsblu1 >= 10) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 10;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Truck_01_ammo_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
    
    case 15:  
    {
          if (commandpointsblu1 >= 28) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 28;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_APC_Tracked_01_CRV_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
    case 16:  
    {
          if (commandpointsblu1 >= 8) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 8;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_MRAP_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

    case 17:  
    {
          if (commandpointsblu1 >= 14) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 14;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_MRAP_01_hmg_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
    case 18:  
    {
          if (commandpointsblu1 >= 20) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 20;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_MRAP_01_gmg_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };   

    case 19:  
    {
          if (commandpointsblu1 >= 20) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 20;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m113_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
	
case 20:  
    {
          if (commandpointsblu1 >= 30) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 30;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M2A2_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

case 21:  
    {
          if (commandpointsblu1 >= 32) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 32;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M2A2_BUSKI_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };
	
case 22:  
    {
          if (commandpointsblu1 >= 34) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 34;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M2A3_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

case 23:  
    {
          if (commandpointsblu1 >= 36) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 36;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M2A3_BUSKI_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };
    };

case 24:  
    {
          if (commandpointsblu1 >= 38) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 38;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M2A3_BUSKIII_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 25:  
    {
          if (commandpointsblu1 >= 32) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 32;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "RHS_M6_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
	
case 26:  
    {
          if (commandpointsblu1 >= 38) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 38;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1a1aimwd_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 27:  
    {
          if (commandpointsblu1 >= 40) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 40;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1a1aim_tuski_wd" createVehicle _spawnPos; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
	
case 28:  
    {
          if (commandpointsblu1 >= 44) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 44;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1a2sep1wd_usarmy" createVehicle _spawnPos; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };

case 29:  
    {
          if (commandpointsblu1 >= 50) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 50;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m1a2sep1tuskiwd_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 30:  
    {
          if (commandpointsblu1 >= 75) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 75;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhsusf_m109_usarmy" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 31:  
    {
          if (commandpointsblu1 >= 75) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 75;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_MBT_01_mlrs_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 32:  
    {
          if (commandpointsblu1 >= 18) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 18;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Heli_Light_01_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 33:  
    {
          if (commandpointsblu1 >= 28) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 28;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_Heli_Light_01_armed_F" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 34:  
    {
          if (commandpointsblu1 >= 45) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 45;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhs_ah64d_wd" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 35:  
    {
          if (commandpointsblu1 >= 28) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 28;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhs_ch_47f" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 36:  
    {
          if (commandpointsblu1 >= 22) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 22;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhs_uh60m" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 37:  
    {
          if (commandpointsblu1 >= 24) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 24;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhs_uh60m_mev" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 38:  
    {
          if (commandpointsblu1 >= 45) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 5;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "rhs_a10" createVehicle _spawnPos;
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 39:  
    {
          if (commandpointsblu1 >= 15) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 15;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_UAV_02_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };	
   
case 40:  
    {
          if (commandpointsblu1 >= 15) then 
          {
           hint "Vehicle ready !";
           commandpointsblu1 = commandpointsblu1 - 15;
           ctrlSetText [1000, format["%1",commandpointsblu1]];
           _vehic = "B_UAV_02_CAS_F" createVehicle _spawnPos; createVehicleCrew _vehic; 
          } 
          else 
          {
          hint "Not enough command points";
          };  
    };
   
case 31:  
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


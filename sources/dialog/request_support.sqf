_index2 = lbCurSel 2103;

switch (_index2) do
{
    case 0:  
    {
         if (!support_camera_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _camera = [player,"cam"] call BIS_fnc_addCommMenuItem;
				  Camera =_camera;
                  lbSetColor [2103, 0, [0, 1, 0, 1]];
				  playSound "boots";
                  support_camera_available = true;
                }
              else
                {                  
				  hint "Not enough command points";
                };    
             } 
          else 
             {
				  if (CamInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
				  commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,Camera] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 0, [1, 0, 0, 1]];
				  playSound "boots";
				  support_camera_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
	
	case 1:  
    {
         if (!support_supplydrop_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _supplydrop = [player,"ammo"] call BIS_fnc_addCommMenuItem;
				  DUWSsupplydrop =_supplydrop;
                  lbSetColor [2103, 1, [0, 1, 0, 1]];
				  playSound "boots";
                  support_supplydrop_available = true;
                }
              else
                {                  
				  hint "Not enough command points";
                };    
             } 
          else 
             {
               commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,DUWSsupplydrop] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 1, [1, 0, 0, 1]];
				  playSound "boots";
				  support_supplydrop_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

    case 2:
    {
         if (!support_arty_available) then 
             {
              if (commandpoints>=15) then
                {
                  commandpoints = commandpoints - 15;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _arty = [player,"artillery"] call BIS_fnc_addCommMenuItem;
				  arty = _arty;
                  lbSetColor [2103, 2, [0, 1, 0, 1]];
				  playSound "boots";
                  support_arty_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (ArtyInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			      commandpoints = commandpoints + 7.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,arty] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 2, [1, 0, 0, 1]];
				  playSound "boots";
				  support_arty_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

    case 3:
    {
         if (!support_mortar_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _morty = [player,"mortar"] call BIS_fnc_addCommMenuItem;
				  morty = _morty;
                  lbSetColor [2103, 3, [0, 1, 0, 1]];
				  playSound "boots";
                  support_mortar_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (MortInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,morty] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 3, [1, 0, 0, 1]];
				  playSound "boots";
				  support_mortar_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

        case 4:
    {
         if (!support_paradrop_available) then 
             {
              if (commandpoints>=15) then
                {
                  commandpoints = commandpoints - 15;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _paradrops = [player,"paradrop"] call BIS_fnc_addCommMenuItem;
				  paradrops = _paradrops;
                  lbSetColor [2103, 4, [0, 1, 0, 1]];
				  playSound "boots";
                  support_paradrop_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               commandpoints = commandpoints + 7.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,paradrops] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 4, [1, 0, 0, 1]];
				  playSound "boots";
				  support_paradrop_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    }; 
    
    case 5:
    {
         if (!support_jdam_available) then 
             {
              if (commandpoints>=15) then
                {
                  commandpoints = commandpoints - 15;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _jdams = [player,"jdam"] call BIS_fnc_addCommMenuItem;
				  jdams = _jdams;
                  lbSetColor [2103, 5, [0, 1, 0, 1]];
				  playSound "boots";
                  support_jdam_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (JdamInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 7.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,jdams] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 5, [1, 0, 0, 1]];
				  playSound "boots";
				  support_jdam_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    }; 
    
    case 6:
    {
         if (!support_armory_available) then 
             {
              if (commandpoints>=3) then
                {
                  commandpoints = commandpoints - 3;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  hq_player addAction ["<t color='#ff0066'>Armory 1 (VAS)</t>","VAS\open.sqf", "", 0, true, true, "", "_this == player"];
				  hq_player addAction ["<t color='#ff0066'>Armory 2 (VA)</t>","va.sqf", "", 0, true, true, "", "_this == player"];
				  lbSetColor [2103, 6, [0, 1, 0, 1]];
                  support_armory_available = true;
				  
				 {_x addAction ["<t color='#ff0066'>Armory 1 (VAS)</t>","VAS\open.sqf", "", 0, true, true, "", "_this == player"]} forEach (Array_of_FOBS);
				 {_x addAction ["<t color='#ff0066'>Armory 2 (VA)</t>","va.sqf", "", 0, true, true, "", "_this == player"]} forEach (Array_of_FOBS);
				  
				  playSound "loadgun";
				 // publicVariable "support_armory_available";
                  ["armory",["Armory Unlocked","Access the armory at the HQ and at the dropped supply crates"]] call bis_fnc_showNotification;
				 
				  
                }
              else
                {
                  hint "Not enough command points!";
                };
             } 
          else 
             {
               hint "You cannot re-lock this support for any refunds";
             };
    };  
    
    case 7:
    {
         if (!support_PFLIR_available) then 
             {
              if (commandpoints>=12) then
                {
                  commandpoints = commandpoints - 12;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  pFLIRenable = player addAction ["<t color='#a9ff59'>Activate FLIR</t>","pflir\livefeed1.sqf","", 0,false,true,"","_target == _this"];
				  PlayerRespawnEH2 = player addEventHandler ["respawn",{pFLIRenable = player addAction ["<t color='#a9ff59'>Enable FLIR</t>","pflir\livefeed1.sqf","", 0,false,true,"","_target == _this"]}];
                  lbSetColor [2103, 7, [0, 1, 0, 1]];
                  support_pflir_available = true;
				  playSound "loadgun";
                  ["pflir",["Personal FLIR display","Toggle you personal FLIR display using the action menu"]] call bis_fnc_showNotification;
                }
              else
                {
                  hint "Not enough command points!";
                };
             } 
          else 
             {
               hint "You cannot re-lock this support for any refunds";
             };
    };
    
    case 8:
    {
         if (!support_uav_recon_available) then 
             {
              if (commandpoints>=15) then
                {
                  commandpoints = commandpoints - 15;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem;
				  uavrecon = _uav_recon;
                  lbSetColor [2103, 8, [0, 1, 0, 1]];
				  playSound "boots";
                  support_uav_recon_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (UavInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 7.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,uavrecon] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 8, [1, 0, 0, 1]];
				  playSound "boots";
				  support_uav_recon_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
    
    case 9:
    {
         if (!support_veh_refit_available) then 
             {
              if (commandpoints>=5) then
                {
                  commandpoints = commandpoints - 5;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _veh_refit = [player,"vehicle_refit"] call BIS_fnc_addCommMenuItem;
				  vehrefit = _veh_refit;
                  lbSetColor [2103, 9, [0, 1, 0, 1]];
				  playSound "loadgun";
                  support_veh_refit_available = true;				  
							 
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               commandpoints = commandpoints + 2.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,vehrefit] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 9, [1, 0, 0, 1]];
				  playSound "boots";
				  support_veh_refit_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
             
    case 10:
    {
         if (!support_helotaximh9_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _helotaxmh9 = [player,"helo_taximh9"] call BIS_fnc_addCommMenuItem;
				  helotaxmh9 = _helotaxmh9;
                  lbSetColor [2103, 10, [0, 1, 0, 1]];
				  playSound "boots";
                  support_helotaximh9_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (Htaximh9InUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			      commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,helotaxmh9] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 10, [1, 0, 0, 1]];
				  playSound "boots";
				  support_helotaximh9_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
	
	case 11:
    {
         if (!support_helotaxi80_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _helotax80 = [player,"helo_taxi80"] call BIS_fnc_addCommMenuItem;
				  helotax80 = _helotax80;
                  lbSetColor [2103, 11, [0, 1, 0, 1]];
				  playSound "boots";
                  support_helotaxi80_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (Htaxi80InUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,helotax80] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 11, [1, 0, 0, 1]];
				  playSound "boots";
				  support_helotaxi80_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
	
	case 12:
    {
         if (!support_helotaxi290_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _helotax290 = [player,"helo_taxi290"] call BIS_fnc_addCommMenuItem;
				  helotax290 = _helotax290;
                  lbSetColor [2103, 12, [0, 1, 0, 1]];
				  playSound "boots";
                  support_helotaxi290_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (Htaxi290InUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,helotax290] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 12, [1, 0, 0, 1]];
				  playSound "boots";
				  support_helotaxi290_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
    
    case 13:
    {
         if (!support_cluster_available) then 
             {
              if (commandpoints>=15) then
                {
                  commandpoints = commandpoints - 15;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _cluster = [player,"cluster"] call BIS_fnc_addCommMenuItem;
				  cluster = _cluster;
                  lbSetColor [2103, 13, [0, 1, 0, 1]];
				  playSound "boots";
                  support_cluster_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (ClusterInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 7.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,cluster] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 13, [1, 0, 0, 1]];
				  playSound "boots";
				  support_cluster_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
	
    case 14:
    {
         if (!support_specialized_training_available) then 
             {
              if (commandpoints>=20) then
                {
                  commandpoints = commandpoints - 20;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  ["inf_training",["Specialized Infantry training","Our troops are now more skilled in battle"]] call bis_fnc_showNotification;

				  if(PlayableSide == west) then
                  {
				    blufor_ai_skill = [(blufor_ai_skill select 0)+0.3,(blufor_ai_skill select 1)+0.3];
                  };

                  if(PlayableSide == east) then
                  {
                    opfor_ai_skill = [(opfor_ai_skill select 0)+0.3,(opfor_ai_skill select 1)+0.3];
                  };
                  lbSetColor [2103, 14, [0, 1, 0, 1]];
                  support_specialized_training_available = true;
				  publicVariable "support_specialized_training_available";
				  playSound "boots";
				  publicVariable "blufor_ai_skill";				  
                }
              else
                {
                  hint "Not enough command points!";
                };
             } 
          else 
             {
               hint "You cannot re-lock this support for any refunds";
             };
    };	
	
    case 15:
    {
         if (!support_boattaxi_available) then 
             {
              if (commandpoints>=2) then
                {
                  commandpoints = commandpoints - 2;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  lbSetColor [2103, 15, [0, 1, 0, 1]];
                  support_boattaxi_available = true;
				  _boattaxi = [player,"boat_taxi"] call BIS_fnc_addCommMenuItem;
				  boattaxi = _boattaxi;
				  playSound "boots";
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (BtaxiInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 1;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,boattaxi] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 15, [1, 0, 0, 1]];
				  playSound "boots";
				  support_boattaxi_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

case 16:
    {
         if (!support_halo_available) then 
             {
              if (commandpoints>=15) then
                {
                  commandpoints = commandpoints - 15;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  hq_player addAction ["<t color='#15ff00'>HALO Alone (5CP)</t>", "ATM_airdrop\atm_airdrop.sqf", "", 0, true, true, "", "_this == player"];
				  hq_player addAction ["<t color='#15ff00'>HALO Group (5CP)</t>", "COB_HALO\grphalo.sqf", "", 0, true, true, "", "_this == player"];
                  lbSetColor [2103, 16, [0, 1, 0, 1]];
                  support_halo_available = true;
				  {_x addAction ["<t color='#15ff00'>HALO Alone (5CP)</t>", "ATM_airdrop\atm_airdrop.sqf", "", 0, true, true, "", "_this == player"]} forEach (Array_of_FOBS);
				  {_x addAction ["<t color='#15ff00'>HALO Group (5CP)</t>", "COB_HALO\grphalo.sqf", "", 0, true, true, "", "_this == player"]} forEach (Array_of_FOBS);
				  playSound "loadgun";
				 // publicVariable "support_halo_available";
                  ["halo",["Halo Unlocked","Access Halo Jumping at the HQ and at FOB's"]] call bis_fnc_showNotification;
                }
              else
                {
                  hint "Not enough command points!";
                };
             } 
          else 
             {
               hint "You cannot re-lock this support for any refunds";
             };
    };

case 17:
    {
         if (!support_hcCAS_available) then 
             {
              if (commandpoints>=20) then
                {
                  commandpoints = commandpoints - 20;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcCAS = [player,"hc_CAS"] call BIS_fnc_addCommMenuItem;
				  hcCAS = _hcCAS;
                  lbSetColor [2103, 17, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcCAS_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (CASInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 10;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,hcCAS] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 17, [1, 0, 0, 1]];
				  playSound "boots";
				  support_hcCAS_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

case 18:
    {
         if (!support_hcAttChop_available) then 
             {
              if (commandpoints>=20) then
                {
                  commandpoints = commandpoints - 20;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcAttChop = [player,"hc_ATTchop"] call BIS_fnc_addCommMenuItem;
				  hcAttChop = _hcAttChop;
                  lbSetColor [2103, 18, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcAttChop_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               if (AttChopInUse) exitWith {hint "You must wait a few minutes for item to return to 0-8 menu before re-locking it!"};
			   commandpoints = commandpoints + 10;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,hcAttChop] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 18, [1, 0, 0, 1]];
				  playSound "boots";
				  support_hcAttChop_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

case 19:
    {
         if (!support_hcAIRTRANS_available) then 
             {
              if (commandpoints>=10) then
                {
                  commandpoints = commandpoints - 10;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcAIRTRANS = [player,"hc_AIRTRANS"] call BIS_fnc_addCommMenuItem;
				  hcAIRTRANS = _hcAIRTRANS;
                  lbSetColor [2103, 19, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcAIRTRANS_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               commandpoints = commandpoints + 5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,hcAIRTRANS] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 19, [1, 0, 0, 1]];
				  playSound "boots";
				  support_hcAIRTRANS_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

case 20:
    {
         if (!support_hcGRTRANS_available) then 
             {
              if (commandpoints>=8) then
                {
                  commandpoints = commandpoints - 8;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcGRTRANS = [player,"hc_GRTRANS"] call BIS_fnc_addCommMenuItem;
				  hcGRTRANS = _hcGRTRANS;
                  lbSetColor [2103, 20, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcGRTRANS_available = true;
                }
              else
                {
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               commandpoints = commandpoints + 4;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,hcGRTRANS] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 20, [1, 0, 0, 1]];
				  playSound "boots";
				  support_hcGRTRANS_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };
	
case 21:
    {
         if (!support_hcBob_available) then 
             {
              if (commandpoints>=25) then
                {
                  commandpoints = commandpoints - 25;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcBOBCATREP = [player,"hc_BOBCATREP"] call BIS_fnc_addCommMenuItem;
				  hcBOBCATREP = _hcBOBCATREP;
                  lbSetColor [2103, 21, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcBob_available = true;
                }
              else
                {				
				  hint "Not enough command points";                  
                };
				
             } 
          else 
             {
               commandpoints = commandpoints + 12.5;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,hcBOBCATREP] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 21, [1, 0, 0, 1]];
				  playSound "boots";
				  support_hcBob_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };	

case 22:
    {
         if (!support_hcREPAIR_available) then 
             {
              if (commandpoints>=8) then
                {
                  commandpoints = commandpoints - 8;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcREPAIR = [player,"hc_REPAIR"] call BIS_fnc_addCommMenuItem;
				  hcREPAIR = _hcREPAIR;
                  lbSetColor [2103, 22, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcREPAIR_available = true;
				}
              else
                {				
				  hint "Not enough command points";                  
                };
             } 
          else 
             {
               commandpoints = commandpoints + 4;
			   ctrlSetText [1000, format["%1",commandpoints]];
				  [player,hcREPAIR] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 22, [1, 0, 0, 1]];
				  playSound "boots";
				  support_hcREPAIR_available = false;
				  hint "Support Locked & 50% Refunded";
             };
    };

case 23:
    {
         if (!support_hcREFUEL_available) then 
             {
              if (commandpoints>=8) then
                {
                  commandpoints = commandpoints - 8;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _hcREFUEL = [player,"hc_REFUEL"] call BIS_fnc_addCommMenuItem;
				  hcREFUEL = _hcREFUEL;
                  lbSetColor [2103, 23, [0, 1, 0, 1]];
				  playSound "boots";
                  support_hcREFUEL_available = true;
                  }
				  else
				 {			   
                  hint "Not enough command points";			   
                 };
		}
		else
		{
			   commandpoints = commandpoints + 4;
			   ctrlSetText [1000, format["%1",commandpoints]];
			   [player,hcREFUEL] call BIS_fnc_removeCommMenuItem;
			   lbSetColor [2103, 23, [1, 0, 0, 1]];
			   playSound "boots";
			   support_hcREFUEL_available = false;
			   hint "Support Locked & 50% Refunded";
		};			 
			
	};

case 24:
    {
         if (zoneundercontrolplayer >= 1) then 
             {
              if (!support_FOB_available) then
                {
                  commandpoints = commandpoints - 0;
                  ctrlSetText [1000, format["%1",commandpoints]];
                  _repfob = [player,"fob_support"] call BIS_fnc_addCommMenuItem;
				  DUWSrepfob = _repfob;
                  lbSetColor [2103, 24, [0, 1, 0, 1]];
				  playSound "boots";
                  support_FOB_available = true;
                }
              else
                {
				  commandpoints = commandpoints + 0;
				  ctrlSetText [1000, format["%1",commandpoints]];
				  [player,DUWSrepfob] call BIS_fnc_removeCommMenuItem;
				  lbSetColor [2103, 24, [1, 0, 0, 1]];
				  playSound "boots";
				  support_FOB_available = false;
                  hint "Support removed from comm menu";
                };
             } 
          else 
             {
               hint "Your team must control at least 1 zone";
             };
    };  	
	
};

//hint format["index: %1",_index2];


publicVariable "commandpoints";

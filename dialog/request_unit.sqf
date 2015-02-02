_index = lbCurSel 2100;

_skill = (blufor_ai_skill select 0)+0.2;
_skillSF = (blufor_ai_skill select 0)+0.5;
_spawnpos = [(getpos player select 0)-78, (getpos player select 1)-73.5];

switch (_index) do
{
    case 0:  
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_rifleman" createUnit [_spawnpos, _group, "if (player_fatigue == 0) then {this enablefatigue false};if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'};", _skill, "private"];
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 1:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_riflemanl" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 2:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_rifleman_m16" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 3:
    {
         if (commandpointsblu1 >= 3) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 3;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_riflemanat" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 4:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_grenadier" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 5:
    {
         if (commandpointsblu1 >= 3) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 3;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_marksman" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    case 6:
    {
         if (commandpointsblu1 >= 3) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 3;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_autorifleman" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    case 7:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_autoriflemana" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 
    case 8:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_machinegunner" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skillSF, "private"] ;
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
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_machinegunnera" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 
    case 10:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_sniper" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skillSF, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 
    case 11:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "B_sniper_F" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skillSF, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 	
    case 12:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "B_spotter_F" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 13:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_squadleader" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 14:
    {
         if (commandpointsblu1 >= 3) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 3;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_teamleader" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 15:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_medic" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 16:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_engineer" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 17:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_javelin" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 18:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_aa" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 19:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_helipilot" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 20:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_helicrew" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 21:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_crewman" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 22:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 3;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_combatcrewman" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 23:
    {
         if (commandpointsblu1 >= 2) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 2;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "rhsusf_army_ocp_driver" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 24:
    {
         if (commandpointsblu1 >= 3) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 3;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "B_diver_F" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
case 25:
    {
         if (commandpointsblu1 >= 4) then 
             {
               hint "Unit ready !";
               commandpointsblu1 = commandpointsblu1 - 4;
               ctrlSetText [1000, format["%1",commandpointsblu1]];
               _group = group player ;
               "B_diver_exp_F" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
             } 
          else 
             {
               hint "Not enough command points";
             };
    }; 		
	
};

//hint format["AI skill: %1",_skill];            
publicVariable "commandpointsblu1";

//hint format["index: %1",_index];
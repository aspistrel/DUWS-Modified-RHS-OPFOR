_index = lbCurSel 2120;

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
               "rhsusf_army_ocp_rifleman" createUnit [_spawnpos, _group, "if (revive_activated == 2) then {[this] execvm 'ais_injury\init_ais.sqf'}; if (player_fatigue == 0) then {this enablefatigue false};", _skill, "private"] ;
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

    case 2:
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
	
};

//hint format["AI skill: %1",_skill];            
publicVariable "commandpointsblu1";

//hint format["index: %1",_index];
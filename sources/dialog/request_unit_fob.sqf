_index = lbCurSel 2120;

if(PlayableSide == west) then
{
    _skill = (blufor_ai_skill select 0)+0.2;
    _skillSF = (blufor_ai_skill select 0)+0.5;
}

if(PlayableSide == east) then
{
    _skill = (opfor_ai_skill select 0)+0.2;
    _skillSF = (opfor_ai_skill select 0)+0.5;
}

_spawnpos = [(getpos player select 0)-78, (getpos player select 1)-73.5];

switch (_index) do
{
    case 0:  
    {
         if (commandpoints >= 2) then 
             {
               hint "Unit ready !";
               commandpoints = commandpoints - 2;
               ctrlSetText [1000, format["%1",commandpoints]];
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
         if (commandpoints >= 4) then 
             {
               hint "Unit ready !";
               commandpoints = commandpoints - 4;
               ctrlSetText [1000, format["%1",commandpoints]];
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
         if (commandpoints >= 4) then 
             {
               hint "Unit ready !";
               commandpoints = commandpoints - 4;
               ctrlSetText [1000, format["%1",commandpoints]];
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
publicVariable "commandpoints";

//hint format["index: %1",_index];
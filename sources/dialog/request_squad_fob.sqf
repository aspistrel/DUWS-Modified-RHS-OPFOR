_index = lbCurSel 2121;

_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+25, _spawnPos select 1];

if(PlayableSide == west) then
{
    _currentAiSkill = blufor_ai_skill;
}

if(PlayableSide == east) then
{
    _currentAiSkill = opfor_ai_skill;
}

// Duh, again?
switch (_index) do
{
    case 0:  
    {
    _cost = 12;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team");
         if (commandpoints >= _cost) then 
             {
              _group = [_spawnPos, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_fireteam = DUWS_number_fireteam + 1;
			  _group setGroupId [format["Fireteam %1",DUWS_number_fireteam]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    
    case 1:  
    {
    _cost = 18;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_heavy_AT");
         if (commandpoints >= _cost) then 
             {
              _group = [_spawnPos, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_at = DUWS_number_at + 1;
			  _group setGroupId [format["AT team %1",DUWS_number_at]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

        case 2:  
    {
    _cost = 18;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_AA");
         if (commandpoints >= _cost) then 
             {
              _group = [_spawnPos, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_aa = DUWS_number_aa + 1;
			  _group setGroupId [format["AA team %1",DUWS_number_aa]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    
    
	


};


publicVariable "commandpoints";
_index = lbCurSel 2101;

_spawnPos = getpos player;
_spawnPos = [(_spawnPos select 0)+25, _spawnPos select 1];

SpawnRequestSquad = {

    private ["_currentIndex"];
    _currentIndex = select 0;
    _pos = select 1;

    if(PlayableSide == west) then
    {
        _currentAiSkill = blufor_ai_skill;
    };

    if(PlayableSide == east) then
    {
        _currentAiSkill = opfor_ai_skill;
    };


    if(_aiBoosted) then
    {
        _aiSkill = [0.9,1];
    }
    else
    {
        _aiSkill = _currentAiSkill;
    }

    _cost = (RequestCost select _currentIndex);
    _side = PlayableSide;
    _grouptype = (RequestGroups select _currentIndex);
    _name = ((RequestNames select _currentIndex) select 0);

    _grouptype = _type;
    if (commandpoints >= _cost) then
    {
        _group = [_pos, _side, _grouptype, [], [], _aiSkill] call BIS_fnc_spawnGroup;
        player hcsetgroup [_group,""];
        commandpoints = commandpoints - _cost;
        ctrlSetText [1000, format["%1",commandpoints]];

        RequestNames set [_currentIndex, [_name, ((RequestNames select _currentIndex) select 0)+1];

        _newNumber = ((RequestNames select _currentIndex) select 1);

        _group setGroupId [format[_name+" %1",_newNumber]];
        hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
    }
    else
    {
        hint "Not enough command points";
    };

};

[_index, _spawnPos] call SpawnRequestSquad;

publicVariable "commandpoints";





/*
// Oh, are you serious? Switch-case??
  switch (_index) do
{
    case 0:  
    {
    _cost = 8;
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
    _cost = 16;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_squad");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_riflesquad = DUWS_number_riflesquad + 1;
			  _group setGroupId [format["Rifle squad %1",DUWS_number_riflesquad]];
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
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_weaponsquad");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_weaponsquad = DUWS_number_weaponsquad + 1;
			  _group setGroupId [format["Wpns squad %1",DUWS_number_weaponsquad]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 3:  
    {
    _cost = 12;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_heavy_AT");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup;
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

        case 4:  
    {
    _cost = 15;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_AA");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup;
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
    
    case 5:  
    {
    _cost = 12;
    _grouptype = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconPatrol");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], [0.9,1]] call BIS_fnc_spawnGroup;  // these have special AI skill range
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_sfteam = DUWS_number_sfteam + 1;
			  _group setGroupId [format["SF team %1",DUWS_number_sfteam]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    
    
    case 6:  
    {
    _cost = 20;
    _grouptype = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconTeam");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], [0.9,1]] call BIS_fnc_spawnGroup;  // these have special AI skill range
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_sfsquad = DUWS_number_sfsquad + 1;
			  _group setGroupId [format["SF squad %1",DUWS_number_sfsquad]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 7:  
    {
    _cost = 12;
    _grouptype = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "SpecOps" >> "BUS_DiverTeam");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], [0.9,1]] call BIS_fnc_spawnGroup;  // these have special AI skill range
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_divers = DUWS_number_divers + 1;
			  _group setGroupId [format["Divers team %1",DUWS_number_divers]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 8:  
    {
    _cost = 8;
    _grouptype = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_SniperTeam");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], [0.9,1]] call BIS_fnc_spawnGroup;  // these have special AI skill range
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_sniper = DUWS_number_sniper + 1;
			  _group setGroupId [format["Sniper team %1",DUWS_number_sniper]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };

    case 9:  
    {
    _cost = 10;
    _grouptype = (configFile >> "CfgGroups" >> "West" >> "BLU_F" >> "Support" >> "BUS_Support_CLS");
	
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup;
			  
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_medical = DUWS_number_medical + 1;
			  _group setGroupId [format["Medical team %1",DUWS_number_medical]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    
    case 10:  
    {
    _cost = 28;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradley" >> "rhs_group_nato_usarmy_wd_bradley_squad");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup; 
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_motor = DUWS_number_motor + 1;
			  _group setGroupId [format["Mot. scouts %1",DUWS_number_motor]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
    
    case 11:  
    {
    _cost = 36;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup; 
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_meca = DUWS_number_meca + 1;
			  _group setGroupId [format["Mec. squad %1",DUWS_number_meca]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
	
	case 12:  
    {
    _cost = 40;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_M1A2" >> "RHS_M1A2SEP_wd_Platoon");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup; 
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_tank = DUWS_number_tank + 1;
			  _group setGroupId [format["Tank Armor squad %1",DUWS_number_tankaa]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
	
	case 13:  
    {
    _cost = 40;
    _grouptype = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_M1A2" >> "RHS_M1A2SEP_wd_Platoon_AA");
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, WEST, _grouptype, [], [], blufor_ai_skill] call BIS_fnc_spawnGroup; 
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_tankaa = DUWS_number_tankaa + 1;
			  _group setGroupId [format["AA Armor squad %1",DUWS_number_tank]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
    };
	
	


};
*/

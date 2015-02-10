_index = lbCurSel 2103;

_spawnPos = getmarkerpos str player_hq_markername;
_spawnPos = [(_spawnPos select 0)+250, _spawnPos select 1, (_spawnPos select 2)+200];    
_cost = 3;
_grouptype = ["RHS_UH60M"];

if(PlayableSide == west) then
{
    _currentAiSkill = blufor_ai_skill;
}

if(PlayableSide == east) then
{
    _currentAiSkill = opfor_ai_skill;
}
	
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_aitransh = DUWS_number_aitransh + 1;
			  _group setGroupId [format["AirH transport %1",DUWS_number_aitransh]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 1;
_hcAIRTRANS = [player,"hc_AIRTRANS"] call BIS_fnc_addCommMenuItem;
hcAIRTRANS = _hcAIRTRANS;
    
	





publicVariable "commandpoints";
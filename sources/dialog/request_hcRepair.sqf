_index = lbCurSel 2103;

_spawnPos = getmarkerpos str player_hq_markername;
_spawnPos = [(_spawnPos select 0)+25, _spawnPos select 1];
_spawnPos2 = [(_spawnPos select 0)+25, _spawnPos select 1];    
_cost = 4;
_grouptype = ["B_Truck_01_Repair_F"];

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
              _group = [_spawnPos2, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_repaira = DUWS_number_repaira + 1;
			  _group setGroupId [format["Repair Team %1",DUWS_number_repaira]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 1;
_hcREPAIR = [player,"hc_REPAIR"] call BIS_fnc_addCommMenuItem;
hcREPAIR = _hcREPAIR;
    
	





publicVariable "commandpoints";
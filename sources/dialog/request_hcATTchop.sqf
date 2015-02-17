_index = lbCurSel 2103;
AttChopInUse = true;


_spawnPos = getmarkerpos str player_hq_markername;
_spawnPos = [(_spawnPos select 0)+250, _spawnPos select 1, (_spawnPos select 2)+200];    
_cost = 5;
_grouptype = ["RHS_AH64D_wd"];


_currentAiSkill = blufor_ai_skill;
if(PlayableSide == east) then
{
    _currentAiSkill = opfor_ai_skill;
};
	
         if (commandpoints >= _cost) then
             {
              _group = [_spawnPos, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_attackchopa = DUWS_number_attackchopa + 1;
			  _group setGroupId [format["Air attack squad %1",DUWS_number_attackchopa]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 180;
_hcAttChop = [player,"hc_ATTchop"] call BIS_fnc_addCommMenuItem;
hcAttChop = _hcAttChop;
AttChopInUse = false;
    
	





publicVariable "commandpoints";
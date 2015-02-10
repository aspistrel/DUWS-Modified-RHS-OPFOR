_index = lbCurSel 2103;
CASInUse = true;

_spawnPos = getmarkerpos str blu_hq_markername;
_spawnPos = [(_spawnPos select 0)+250, _spawnPos select 1, (_spawnPos select 2)+500];
_cost = 5;
_grouptype = ["RHS_A10"];

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
              _group = [_spawnPos, WEST, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_casa = DUWS_number_casa + 1;
			  _group setGroupId [format["CAS squad %1",DUWS_number_casa]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 180;
_hcCAS = [player,"hc_CAS"] call BIS_fnc_addCommMenuItem;
hcCAS = _hcCAS;
CASInUse = false;
    
	





publicVariable "commandpoints";
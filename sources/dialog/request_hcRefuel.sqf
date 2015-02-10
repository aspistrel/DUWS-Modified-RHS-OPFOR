_index = lbCurSel 2103;

_spawnPos = getmarkerpos str player_hq_markername;
_spawnPos = [(_spawnPos select 0)+25, _spawnPos select 1];    
_cost = 2;
_grouptype = ["B_G_Van_01_fuel_F"];

if(PlayableSide == west) then
{
    _currentAiSkill = blufor_ai_skill;
};

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
			  DUWS_number_refuela = DUWS_number_refuela + 1;
			  _group setGroupId [format["Fuel Team %1",DUWS_number_refuela]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 1;
_hcREFUEL = [player,"hc_REFUEL"] call BIS_fnc_addCommMenuItem;
hcREFUEL = _hcREFUEL;
    
	





publicVariable "commandpoints";
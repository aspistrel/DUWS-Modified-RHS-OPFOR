_index = lbCurSel 2103;

_spawnPos = getmarkerpos str blu_hq_markername;
_spawnPos = [(_spawnPos select 0)+25, _spawnPos select 1];    
_cost = 2;
_grouptype = ["B_Truck_01_transport_F"];

if(PlayableSide == west) then
{
    _currentAiSkill = blufor_ai_skill;
}

if(PlayableSide == east) then
{
    _currentAiSkill = opfor_ai_skill;
}
	
         if (commandpointsblu1 >= _cost) then 
             {
              _group = [_spawnPos, PlayableSide, _grouptype, [], [], _currentAiSkill] call BIS_fnc_spawnGroup;
              player hcsetgroup [_group,""];
              commandpoints = commandpoints - _cost;
              ctrlSetText [1000, format["%1",commandpoints]];
			  DUWS_number_grndt = DUWS_number_grndt + 1;
			  _group setGroupId [format["GrndTr transport %1",DUWS_number_grndt]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 1;
_hcGRTRANS = [player,"hc_GRTRANS"] call BIS_fnc_addCommMenuItem;
hcGRTRANS = _hcGRTRANS;
    
	





publicVariable "commandpoints";
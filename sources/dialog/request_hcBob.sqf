_index = lbCurSel 2103;

_spawnPos = getmarkerpos str player_hq_markername;
_spawnPos = [(_spawnPos select 0)+25, _spawnPos select 1];    
_cost = 8;
_grouptype = ["B_APC_Tracked_01_CRV_F"];

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
			  DUWS_number_bobcata = DUWS_number_bobcata + 1;
			  _group setGroupId [format["BobCat Refit %1",DUWS_number_bobcata]];
              hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
             } 
          else 
             {
               hint "Not enough command points";
             };
			 
sleep 1;
_hcBOBCATREP = [player,"hc_BOBCATREP"] call BIS_fnc_addCommMenuItem;
hcBOBCATREP = _hcBOBCATREP;
    
	





publicVariable "commandpoints";
_position = _this select 0;
_group = [];




// hint format["%1",_position];

if (Warcom_Limiter_Param == 1) then {
_group = [_position, WEST, ["rhsusf_army_ocp_teamleader","rhsusf_army_ocp_aa","rhsusf_army_ocp_javelin","rhsusf_army_ocp_grenadier"],[],[],opfor_ai_skill] call BIS_fnc_spawnGroup;
};

if (Warcom_Limiter_Param == 0) then {
_group = [_position, WEST, ["rhsusf_army_ocp_teamleader","rhsusf_army_ocp_aa","rhsusf_army_ocp_aa","rhsusf_army_ocp_grenadier","rhsusf_army_ocp_javelin"],[],[],opfor_ai_skill] call BIS_fnc_spawnGroup;
};

[_group, _position] call bis_fnc_taskDefend;




if(PlayableSide == east) then
{
    // ADD QRF eventhandler
    _EH = leader _group addEventHandler ["Fired", {[_this select 0] spawn QRF_test}];
    _killcp = [] call cp_ehkilledeast;
};
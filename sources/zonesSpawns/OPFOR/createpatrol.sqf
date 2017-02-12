// usage: [position, radius] execVM "createoppatrol.sqf"
// radius: 50 for patrol inside and around base, 500 for medium lenght skirmish, 1300 for island

_position = _this select 0;
_radius   = _this select 1;


_group = [_position, EAST, ["rhs_msv_rifleman","rhs_msv_rifleman"],[],[],opfor_ai_skill] call BIS_fnc_spawnGroup;
_patrolRadius = round(_radius/2);
[_group, _position, _patrolRadius] call bis_fnc_taskPatrol;

if(PlayableSide == west) then
{
    // ADD QRF eventhandler
    _EH = leader _group addEventHandler ["Fired", {[_this select 0] spawn QRF_test}];
    _killcp = [] call cp_ehkilledeast;
};
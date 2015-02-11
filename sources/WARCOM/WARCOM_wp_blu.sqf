_group =_this select 0;

_group setCombatMode "RED";


// check if at least 1 zone is under BLU control, if not, attack HQ.
if(PlayableSide == east) then
{
    if (count WARCOM_zones_controled_by_OPFOR == 0) exitWith {
        _wp = _group addWaypoint [WARCOM_opf_hq_pos, 0];
        _wp setWaypointType "SAD";
    };
};



{
    _wp = _group addWaypoint [_x, 0];
    _wp setWaypointType "SAD";
	_wp setWaypointCompletionRadius 40;
	_wp setWaypointTimeout [300, 450, 600];
}
forEach WARCOM_zones_controled_by_OPFOR;

/*
_group setCombatMode "RED";

{
    _wp = _group addWaypoint [_x, 0];
    _wp setWaypointType "SAD";
	_wp setWaypointCompletionRadius 40;
	_wp setWaypointTimeout [300, 450, 600]; 
}
forEach WARCOM_zones_controled_by_OPFOR; //WARCOM_createdZones;*/



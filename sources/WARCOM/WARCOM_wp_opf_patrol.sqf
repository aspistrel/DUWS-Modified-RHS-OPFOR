_group =_this select 0;

_group setCombatMode "RED";


{
    _wp = _group addWaypoint [_x, 0];
    _wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "COMBAT";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointCompletionRadius 40;
	_wp setWaypointTimeout [300, 450, 600]; 
}
forEach WARCOM_zones_controled_by_OPFOR;

    _wp1 = _group addWaypoint [getpos leader _group, 0];
    _wp1 setWaypointType "CYCLE";
	_wp1 setWaypointBehaviour "SAFE";
	_wp1 setWaypointSpeed "LIMITED";


/*
WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad_mg_sniper");
AAABBB = [[1774,5888], WEST, WARCOM_blu_attack_wave_type,[],[],[0.9,1.0]] call BIS_fnc_spawnGroup;
AAABBB setCombatMode "RED";
WPWP = AAABBB addWaypoint [[3165, 6190, 0], 0];
WPWP setWaypointType "SAD";
WPWP setWaypointBehaviour "COMBAT";
WPWP setWaypointSpeed "FULL";
WPWP setWaypointCompletionRadius 40;
WPWP setWaypointTimeout [300, 450, 600];
*/
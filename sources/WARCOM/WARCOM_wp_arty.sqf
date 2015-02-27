_group =_this select 0;

_group setCombatMode "RED";


_wp = _group addWaypoint [(getPos leader _group), 5000];
_wp setWaypointType "SAD";
_wp setWaypointFormation "COLUMN";
_wp setWaypointCompletionRadius 5000;
_wp setWaypointTimeout [3000, 4500, 6000];

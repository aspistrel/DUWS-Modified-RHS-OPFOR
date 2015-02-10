_timer = 60;
clicked = false;

// IF NOT ENOUGH PTS
if (commandpoints<3) exitWith {
  ["info",["Not enough command points","Not enough Command Points (3CP required)"]] call bis_fnc_showNotification;
  sleep 2;
_uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem;
uavrecon = _uav_recon;
UavInUse = false;
};

hint "Click on your map to scan a location using the UAV";
UavInUse = true;
OnMapSingleClick "_null = [_pos,500] execVM 'support\uav_map.sqf';clicked=true;onMapSingleClick ''; hint 'Coordinates received'";

// TIMER
while {_timer>0 AND !clicked} do {

_timer = _timer-1; // remove 1 to timer
sleep 1;
};
// TIMER ELLAPSED OR CLICKED
sleep 300;
_uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem;
uavrecon = _uav_recon;
UavInUse = false;
OnMapSingleClick "";
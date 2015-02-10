_MissionPos = _this select 0;
// define random pos AROUND TARGET. spawn markers at random.
_radius = 300;
_randompos = [(_missionpos select 0)+(random _radius)-(random _radius), (_missionpos select 1)+(random _radius)-(random _radius)];

// CREATE NAME
_mission_name = MissionNameCase10;


// CREATE MARKER (ICON)
_markername = format["target%1%2",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _randompos];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "selector_selectedEnemy";
str(_markername) setMarkerColor "ColorOPFOR";
str(_markername) setMarkerText "Assassinate Commander";
str(_markername) setMarkerSize [1, 1];

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipsetarget",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr2 = createMarker [str(_markername2), _randompos];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorOPFOR";
str(_markername2) setMarkerSize [_radius, _radius];
str(_markername2) setMarkerAlpha 0.5;

// CREATE PATROLS
      sleep 1;

_group = createGroup east;
_target = _group createUnit ["O_sniper_F", _missionpos, [], 0, "FORM"]; 
_unit = _group createUnit ["O_spotter_F", _missionpos, [], 0, "FORM"];

// TASK AND NOTIFICATION
_taskhandle = player createSimpleTask ["taskTarget"];
_taskhandle setSimpleTaskDescription ["One of our squads reported being harassed by Russian sniper fire in this area, find the team and eliminate them.",_mission_name,""];
_taskhandle setSimpleTaskDestination (getMarkerPos str(_markername));

[["TaskAssigned",["",_mission_name]],"bis_fnc_showNotification"] call BIS_fnc_MP;
[[{hint"**New Side Mission Loaded**\n\ncheck your map!"}],"BIS_fnc_Spawn",true] call BIS_fnc_MP;


waitUntil {sleep 2; !alive _target};  // MISSION COMPLETED --

// remove markers
deleteMarker str(_markername2);
deleteMarker str(_markername);

player removeSimpleTask _taskhandle;

sleep 1;

// Give cookies  (bonus & notifications)
[["TaskSucceeded",["",_mission_name]],"bis_fnc_showNotification"] call BIS_fnc_MP;
["cpaddedmission",[15]] call bis_fnc_showNotification;
WARCOM_blufor_ap = WARCOM_blufor_ap + 5;
missions_success = missions_success + 1;
commandpoints = commandpoints + 15;
opfor_ap = opfor_ap - 5;
publicVariable "commandpoints";
publicVariable "WARCOM_blufor_ap";
finishedMissionsNumber = finishedMissionsNumber + 1;
publicvariable "finishedMissionsNumber";
_operHandler = []execVM "dialog\operative\operative_mission_complete.sqf";  

// ADD PERSISTENT STAT
_addmission = [] execVM "persistent\persistent_stats_missions_total.sqf";
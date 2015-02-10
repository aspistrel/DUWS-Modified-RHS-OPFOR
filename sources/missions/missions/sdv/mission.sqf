_MissionPos = _this select 0;
// define random pos AROUND SOLDIERS. spawn markers at random.
_radius = 200;
_randompos = [(_missionpos select 0)+(random _radius)-(random _radius), (_missionpos select 1)+(random _radius)-(random _radius)];

_initpos = getpos hq_player;

// CREATE NAME
_mission_name = MissionNameCase11;


// CREATE MARKER (ICON)
_markername = format["resc%1%2",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _randompos];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "mil_pickup";
str(_markername) setMarkerColor "Color3_FD_F";
str(_markername) setMarkerText "Steal";

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipseresc",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr2 = createMarker [str(_markername2), _randompos];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "Color3_FD_F";
str(_markername2) setMarkerSize [_radius, _radius];
str(_markername2) setMarkerAlpha 0.3; 

// CREATE TRUCK & CRATES
_truck1 = "O_SDV_01_F" createVehicle (_missionpos);

// TASK AND NOTIFICATION
_taskhandle = player createSimpleTask ["taskSteal"];
_taskhandle setSimpleTaskDescription ["A Russian SDV is being prepared inland for use on the coast, Instead of destroying it Command wants you to airlift it back to HQ for analysis, after that you can probably keep it for your own use in future operations.",_mission_name,""];
_taskhandle setSimpleTaskDestination (getMarkerPos str(_markername));

["TaskAssigned",["",_mission_name]] call bis_fnc_showNotification;

// CREATE PATROLS
      sleep 1;
      [_missionpos, 15] execvm "createoppatrol.sqf"; // <-- around target
      [_randompos, _radius] execvm "createoppatrol.sqf";
      [_randompos, _radius] execvm "createopteam.sqf";
      
      _group = createGroup east;
_unit = _group createUnit ["rhs_vdv_rifleman", _missionpos, [], 0, "FORM"]; 
_unit = _group createUnit ["rhs_vdv_rifleman", _missionpos, [], 0, "FORM"];
_unit = _group createUnit ["rhs_vdv_rifleman", _missionpos, [], 0, "FORM"];


// MISSION COMPLETED --   ATTENDRE QUE LE CAMION SOIT ARRIVE A LA BASE OU DETRUIT  
waitUntil {sleep 2; ((getdammage _truck1)>0.95 OR (_truck1 distance _initpos)<50)};  

// remove markers
deleteMarker str(_markername2);
deleteMarker str(_markername);

player removeSimpleTask _taskhandle;

if (getdammage _truck1>0.95) exitWith
{
  ["TaskFailed",["","The enemy convoy is destroyed"]] call bis_fnc_showNotification;
};

// IF THE MISSION IS COMPLETE
hint "Analysing the SDV...";
 
// Give cookies  (bonus & notifications)
["TaskSucceeded",["",_mission_name]] call bis_fnc_showNotification;
["cpaddedmission",[25]] call bis_fnc_showNotification;
missions_success = missions_success + 1;
commandpoints = commandpoints + 25;
WARCOM_blufor_ap = WARCOM_blufor_ap + 25;
opfor_ap = opfor_ap - 5;
publicVariable "commandpoints";
publicVariable "WARCOM_blufor_ap";
finishedMissionsNumber = finishedMissionsNumber + 1;
publicvariable "finishedMissionsNumber";
_operHandler = []execVM "dialog\operative\operative_mission_complete.sqf"; 

// ADD PERSISTENT STAT
_addmission = [] execVM "persistent\persistent_stats_missions_total.sqf";

hint "Analysis complete, you can use the SDV at your will.";

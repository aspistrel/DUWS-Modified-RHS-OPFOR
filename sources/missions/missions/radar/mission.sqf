_MissionPos = _this select 0;
// define random pos AROUND SOLDIERS. spawn markers at random.
_radius = 200;
_randompos = [(_missionpos select 0)+(random _radius)-(random _radius), (_missionpos select 1)+(random _radius)-(random _radius)];

// CREATE NAME
_mission_name = MissionNameCase9;


// CREATE MARKER (ICON)
_markername = format["resc%1%2",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _randompos];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "loc_Transmitter";
str(_markername) setMarkerColor "ColorOPFOR";
str(_markername) setMarkerText "Radar";

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipseresc",round(_randompos select 0),round(_randompos select 1)]; // Define marker name
_markerstr2 = createMarker [str(_markername2), _randompos];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorOPFOR";
str(_markername2) setMarkerSize [_radius, _radius];
str(_markername2) setMarkerAlpha 0.3; 

// CREATE TOWER
_tower = "rhs_p37" createVehicle (_missionpos);
_tower setdamage 0.85;
_tower setVectorUp [0,0,1];


// TASK AND NOTIFICATION
_taskhandle = player createSimpleTask ["taskDestroy"];
_taskhandle setSimpleTaskDescription ["The Russians have set up a significant Air defence station in this area, destruction of the P-37 Radar will significantly reduce the effectiveness of the AA Station. Needless to say, aerial attack on the installation is NOT recommended due to the presence of Shilka Air defence vehicles.",_mission_name,""];
_taskhandle setSimpleTaskDestination (getMarkerPos str(_markername));

["TaskAssigned",["",_mission_name]] call bis_fnc_showNotification;

// CREATE PATROLS
      sleep 1;
      [_missionpos, 15] execVM "createoppatrol.sqf"; // <-- around target
      [_randompos, _radius] execVM "createoppatrol.sqf";
      [_randompos, _radius] execVM "createoppatrol.sqf";
      [_randompos, _radius] execVM "createopteam.sqf";
      [_randompos, 20] execVM "Shilka_Defence.sqf";
      [_randompos, _radius] execVM "creatopaapatrol.sqf";
      [_randompos, _radius] execVM "creatopaapatrol.sqf";

//      _group = createGroup east;
//_unit = _group createUnit ["rhs_vdv_rifleman", _missionpos, [], 0, "FORM"]; 
//_unit = _group createUnit ["rhs_vdv_aa", _missionpos, [], 0, "FORM"];
//_unit = _group createUnit ["rhs_vdv_rifleman", _missionpos, [], 0, "FORM"];

// MISSION COMPLETED --   ATTENDRE QUE LA TOUR SOIT KO 
waitUntil {sleep 1; !alive _tower};  

// remove markers
deleteMarker str(_markername2);
deleteMarker str(_markername);

player removeSimpleTask _taskhandle;
 
// Give cookies  (bonus & notifications)
["TaskSucceeded",["",_mission_name]] call bis_fnc_showNotification;
["cpaddedmission",[50]] call bis_fnc_showNotification;
commandpoints = commandpoints + 30;
missions_success = missions_success + 1;
WARCOM_blufor_ap = WARCOM_blufor_ap + 30;
opfor_ap = opfor_ap - 30;
finishedMissionsNumber = finishedMissionsNumber + 1;
publicvariable "finishedMissionsNumber";
publicVariable "commandpoints";
publicVariable "WARCOM_blufor_ap";
_operHandler = []execVM "dialog\operative\operative_mission_complete.sqf";

// ADD PERSISTENT STAT
_addmission = [] execVM "persistent\persistent_stats_missions_total.sqf";
                       
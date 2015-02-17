//  _trg = ["Outpost Airbase",5,50,getpos this,true] execvm "createzone.sqf";
//         Name of the place,pts,radius,position,fortified/not
//

_place = _this select 0; 
_points = _this select 1;
_size = _this select 2;
_trigger = _this select 3;
_fortified = _this select 4;
_prefab = _this select 5;

amount_zones_created = amount_zones_created + 1;
publicVariable "amount_zones_created";
zones_created = true; // Tell that at least 1 zone is created

// Add the zone to the array of zones (need for manual placement of zones and WARCOM)
if (isNil ("Array_of_ENEMY_zones")) then {Array_of_ENEMY_zones = [];};
Array_of_ENEMY_zones = Array_of_ENEMY_zones + [_trigger];
publicVariable "Array_of_ENEMY_zones";

// CREATE MARKER (ICON)
_markername = format["%1%2",round(_trigger select 0),round(_trigger select 1)]; // Define marker name
//hint _markername;
_markerstr = createMarker [str(_markername),_trigger];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "hd_objective";
str(_markername) setMarkerColor "ColorRed";
str(_markername) setMarkerText _place;
str(_markername) setMarkerSize [0, 0];

// CREATE MARKER (ELLIPSE ZONE)
_markername2 = format["%1%2ellipse",round(_trigger select 0),round(_trigger select 1)]; // Define marker name
//hint _markername2;
_markerstr2 = createMarker [str(_markername2),_trigger];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorRed";
str(_markername2) setMarkerSize [_size, _size];
str(_markername2) setMarkerAlpha 0.1; 



// Zone capture indicator
ZoneCapturePos = ZoneCapturePos + [_trigger];
ZoneCaptureMax = ZoneCaptureMax + [_size];
ZoneCaptureTimeOpfor = ZoneCaptureTimeOpfor + [time];
ZoneCaptureTimeBlufor = ZoneCaptureTimeBlufor + [time];
ZoneCaptureOpforCount = ZoneCaptureOpforCount + [0];
ZoneCaptureBluforCount = ZoneCaptureBluforCount + [0];
ZoneCapturePoints = ZoneCapturePoints + [0];

_currentIndex = count ZoneCapturePos;
PlayerCurrentZoneIndex = -1;

publicVariable "ZoneCapturePos";
publicVariable "ZoneCaptureMax";
publicVariable "ZoneCaptureTimeOpfor";
publicVariable "ZoneCaptureTimeBlufor";
publicVariable "ZoneCaptureOpforCount";
publicVariable "ZoneCaptureBluforCount";
publicVariable "ZoneCapturePoints";
publicVariable "PlayerCurrentZoneIndex";

// CREATE ZONE CAPTURABLE TRIGGER
_trg=createTrigger["EmptyDetector",_trigger];
_trg setTriggerArea[_size,_size,0,false];
_trg setTriggerActivation["LOGIC","PRESENT",false];


if(PlayableSide == west) then
{
    _trg setTriggerStatements[format["(ZoneCapturePoints select %1) >= (ZoneCaptureMax select %1)/1.5", _currentIndex], format["[""%1"",%2,""%3"",""%4"",%5, %6, %7] execvm 'zonescap\capture.sqf'",_place,_points,_markername,_markername2,_trigger, PlayerSide, _currentIndex], ""];
};

if(PlayableSide == east) then
{
    _trg setTriggerStatements[format["(ZoneCapturePoints select %1) <= -1*(ZoneCaptureMax select %1)/1.5", _currentIndex], format["[""%1"",%2,""%3"",""%4"",%5, %6, %7] execvm 'zonescap\capture.sqf'",_place,_points,_markername,_markername2,_trigger, PlayerSide, _currentIndex], ""];
};

//_trg setTriggerActivation["WEST","PRESENT",false];
_trg setTriggerTimeout [30, 60, 300, true ];
// CREATE VARNAME FOR ZONE TRIGGER --> use the pos of the trigger
_triggerName = format["trigger%1%2",round (_trigger select 0),round (_trigger select 1)];
call compile format["%1 = _trg",_triggerName];





// CREATE ZONE NOTIFICATION TRIGGER
_trg2=createTrigger["EmptyDetector",_trigger];
_trg2 triggerAttachVehicle [player];
_trg2 setTriggerArea[_size,_size,0,false];
_trg2 setTriggerActivation["VEHICLE","PRESENT",true];
_trg2 setTriggerStatements["this", format["[""%1"",thislist, %2] execvm 'enterlocation.sqf'",_place, _currentIndex], ""];

_trgOpfor = createTrigger["EmptyDetector",_trigger];
_trgOpfor setTriggerArea [_size, _size, 0, false ];
_trgOpfor setTriggerActivation["EAST","PRESENT",true];
_trgOpfor setTriggerStatements[format["(ZoneCaptureTimeOpfor select %1)<time", _currentIndex], format['ZoneCaptureOpforCount set [%1, ({alive _x} count thisList)]; publicVariable "ZoneCaptureOpforCount"; ZoneCaptureTimeOpfor set [%1, time+0.1];',_currentIndex], ""];
_trgOpfor setTriggerTimeout [0, 0, 0, false];
_trgOpfor setTriggerType "NONE";

_trgBlufor = createTrigger["EmptyDetector",_trigger];
_trgBlufor setTriggerArea [_size, _size, 0, false ];
_trgBlufor setTriggerActivation["WEST","PRESENT",true];
_trgBlufor setTriggerStatements[format["(ZoneCaptureTimeBlufor select %1)<time", _currentIndex], format['ZoneCaptureBluforCount set [%1, ({alive _x} count thisList)]; publicVariable "ZoneCaptureBluforCount"; ZoneCaptureTimeBlufor set [%1, time+0.1];',_currentIndex], ""];
_trgBlufor setTriggerTimeout [0, 0, 0, false];
_trgBlufor setTriggerType "NONE";



//










// CREATE PREFAB
if (_prefab) then {
_array_of_prefabs = [["Command Outpost",true,"initZones\prefabs\commandOP.sqf"],
["Vehicle Refit Station",false,"initZones\prefabs\vehfittingstation.sqf"],
["Research Bunker",true,"initZones\prefabs\researchBunker.sqf"],
["Recon Outpost",true,"initZones\prefabs\reconOutpost.sqf"],
["Power Relay",true,"initZones\prefabs\powerRelay.sqf"],
["Com. Station",true,"initZones\prefabs\commstation.sqf"],
["Outpost",true,"initZones\prefabs\outpost1.sqf"],
["Outpost",true,"initZones\prefabs\outpost2.sqf"],
["Barracks",true,"initZones\prefabs\barracks.sqf"],
["Research Station",false,"initZones\prefabs\researchStation.sqf"],
["Camp Site",false,"initZones\prefabs\campsite.sqf"]];

_amount_of_prefabs = count _array_of_prefabs;
_indexedAmount = _amount_of_prefabs - 1;
_dice = round random _indexedAmount;

_prefab_array = _array_of_prefabs select _dice;
_place = _prefab_array select 0;
_fortified = _prefab_array select 1;
_path = _prefab_array select 2;

_prefab_create = [_trigger] execVM _path;
str(_markername) setMarkerText _place;
};



// move the spawn location, or units get stuck
_fortifiedspawn = _trigger;
_trigger = [(_trigger select 0)-100,_trigger select 1];


// CREATE OPFOR. HEAVY CLUSTERFUCK INCOMING.
// Check if fortified is true
if (_fortified) then  
{
      [_fortifiedspawn] execvm EnemySideFolder+"\createfortified.sqf";
      sleep 2;
};

// Check if radius is 100m or smaller => create 2 patrols then exit the script
if (_size < 101) exitWith  
{
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
};
// Check if radius is 250m-100m => create 2 patrols and 1 fireteam then exit the script/500/8
if (_size < 251) exitWith  
{
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
};
// Check if radius is 250m-500m => create 2 patrols and 2 fireteams then exit the script/750-1000/12
if (_size < 500) exitWith  
{
if (Warcom_Limiter_Param == 1) then {

      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
	  waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
	  
} else
{
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
	  waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
	  waituntil {scriptdone _handle};

	  if(PlayableSide == west) then
      {
        ["rhs_faction_msv","rhs_vehclass_apc",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
        ["rhs_faction_usarmy_wd","rhs_vehclass_apc",_trigger,_size] execVM "random_veh.sqf";
      };
};
};

if (_size <= 1000) exitWith                    
{
if (Warcom_Limiter_Param == 1) then {

      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      if(PlayableSide == west) then
      {
          ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
          ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
      };
	  
} else
{
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      if(PlayableSide == west) then
      {
        ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
        ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
      };
};
};
      
if (_size <= 1500) exitWith  
{
if (Warcom_Limiter_Param == 1) then {

    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};   
      if(PlayableSide == west) then
        {
          ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        };

        if(PlayableSide == east) then
        {
          ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        };
} else
{
    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_vdv","rhs_vehclass_helicopter",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_helicopter",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf"; 
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
     waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      if(PlayableSide == west) then
        {
            ["rhs_faction_vdv","rhs_vehclass_helicopter",_trigger,_size] execVM "random_veh.sqf";
        };

        if(PlayableSide == east) then
        {
          ["rhs_faction_usarmy_wd","rhs_vehclass_helicopter",_trigger,_size] execVM "random_veh.sqf";
        };
};
};
	  
if (_size <= 2000) exitWith  
{
if (Warcom_Limiter_Param == 1) then {

    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};    
      if(PlayableSide == west) then
      {
        ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
        ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
      };
} else
{
    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
     waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
     waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};    
      if(PlayableSide == west) then
      {
          ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
        ["rhs_faction_usarmy_wd","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
      };
};
};
  
if (_size <= 3000) exitWith  
{
if (Warcom_Limiter_Param == 1) then {
    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};

        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};

        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};    
      if(PlayableSide == west) then
        {
            ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
        };

        if(PlayableSide == east) then
        {
          ["rhs_faction_usarmy_wd","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
        };
} else
{
    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};

        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};

        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

     _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
     waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};    
      if(PlayableSide == west) then
      {
          ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
        ["rhs_faction_usarmy_wd","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
      };
};
};

// IF NOT IN PARAMETERS (TOO BIG ZONE)        
    if(PlayableSide == west) then
    {
        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};

        _vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

    if(PlayableSide == east) then
    {
        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};

        _vehcreate = ["rhs_faction_usarmy_wd","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
        waitUntil {scriptDone _vehcreate};
    };

      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm EnemySideFolder+"\createpatrol.sqf";
      waituntil {scriptdone _handle};   
      if(PlayableSide == west) then
      {
          ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
      };

      if(PlayableSide == east) then
      {
          ["rhs_faction_usarmy_wd","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
      };

PAPABEAR sidechat (str ZoneCapturePoints);
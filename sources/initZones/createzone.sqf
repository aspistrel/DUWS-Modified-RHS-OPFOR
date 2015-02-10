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



// CREATE ZONE CAPTURABLE TRIGGER
_trg=createTrigger["EmptyDetector",_trigger];
_trg setTriggerArea[_size,_size,0,false];

if(PlayableSide == west) then
{
    _trg setTriggerActivation["WEST SEIZED","PRESENT",false];
}

if(PlayableSide == east) then
{
    _trg setTriggerActivation["EAST SEIZED","PRESENT",false];
}

//_trg setTriggerActivation["WEST","PRESENT",false];
_trg setTriggerStatements["this", format["[""%1"",%2,""%3"",""%4"",%5] execvm 'captured.sqf'",_place,_points,_markername,_markername2,_trigger], ""];
_trg setTriggerTimeout [30, 60, 300, true ];
// CREATE VARNAME FOR ZONE TRIGGER --> use the pos of the trigger
_triggerName = format["trigger%1%2",round (_trigger select 0),round (_trigger select 1)];
call compile format["%1 = _trg",_triggerName];









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



// CREATE ZONE NOTIFICATION TRIGGER
_trg2=createTrigger["EmptyDetector",_trigger];
_trg2 triggerAttachVehicle [player];
_trg2 setTriggerArea[_size,_size,0,false];
_trg2 setTriggerActivation["VEHICLE","PRESENT",true];
_trg2 setTriggerStatements["this", format["[""%1"",thislist] execvm 'enterlocation.sqf'",_place], ""];



// move the spawn location, or units get stuck
_fortifiedspawn = _trigger;
_trigger = [(_trigger select 0)-100,_trigger select 1];


// CREATE OPFOR. HEAVY CLUSTERFUCK INCOMING.
// Check if fortified is true
if (_fortified) then  
{
      [_fortifiedspawn] execvm "createopfortified.sqf";
      sleep 2;
};

// Check if radius is 100m or smaller => create 2 patrols then exit the script
if (_size < 101) exitWith  
{
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
};
// Check if radius is 250m-100m => create 2 patrols and 1 fireteam then exit the script/500/8
if (_size < 251) exitWith  
{
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
};
// Check if radius is 250m-500m => create 2 patrols and 2 fireteams then exit the script/750-1000/12
if (_size < 500) exitWith  
{
if (Warcom_Limiter_Param == 1) then {

      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
	  waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
	  
} else
{
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
	  waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
	  waituntil {scriptdone _handle};
      ["rhs_faction_msv","rhs_vehclass_apc",_trigger,_size] execVM "random_veh.sqf";
};
};

if (_size <= 1000) exitWith                    
{
if (Warcom_Limiter_Param == 1) then {

      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
	  
} else
{
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
};
};
      
if (_size <= 1500) exitWith  
{
if (Warcom_Limiter_Param == 1) then {

_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};   
      ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
} else
{
_vehcreate = ["rhs_faction_vdv","rhs_vehclass_helicopter",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf"; 
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm "createopteam.sqf";
     waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};   
      ["rhs_faction_vdv","rhs_vehclass_helicopter",_trigger,_size] execVM "random_veh.sqf";
};
};
	  
if (_size <= 2000) exitWith  
{
if (Warcom_Limiter_Param == 1) then {

_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};    
      ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
} else
{
_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm "createopteam.sqf";
     waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm "createopteam.sqf";
     waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};    
      ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
};
};
  
if (_size <= 3000) exitWith  
{
if (Warcom_Limiter_Param == 1) then {
_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};

_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};

      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};    
      ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
} else
{
_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};

_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};

     _handle = [_trigger, _size] execvm "createoppatrol.sqf";
     waituntil {scriptdone _handle};
     _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};    
      ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";
};
};

// IF NOT IN PARAMETERS (TOO BIG ZONE)        
_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};

_vehcreate = ["rhs_faction_msv","rhs_vehclass_ifv",_trigger,_size] execVM "random_veh.sqf";
waitUntil {scriptDone _vehcreate};

      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopwpteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createopteam.sqf";
      waituntil {scriptdone _handle};
      _handle = [_trigger, _size] execvm "createoppatrol.sqf";
      waituntil {scriptdone _handle};   
      ["rhs_faction_vdv","rhs_vehclass_aircraft",_trigger,_size] execVM "random_veh.sqf";          
      
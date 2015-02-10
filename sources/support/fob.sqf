_position = _this select 0;
_size = _this select 1;
zoneFound = false;

{
if (player distance _x < 250) exitWith {zoneFound = true};
} forEach WARCOM_zones_controled_by_BLUFOR;

if (!zoneFound) exitWith {
	["Info",["NO FOB ALLOWED HERE","You Must Be Within 250m of a Green Zone's Center"]] call bis_fnc_showNotification;
	sleep 15;
  _repfob = [player,"fob_support"] call BIS_fnc_addCommMenuItem;
  DUWSrepfob = _repfob;
};

if (commandpoints < 10) exitWith {
  ["info",["Not enough command points","Not enough Command Points (10CP required)"]] call bis_fnc_showNotification;
  sleep 15;
  _repfob = [player,"fob_support"] call BIS_fnc_addCommMenuItem;
  DUWSrepfob = _repfob;
};

// REGARDE SI LA ZONE EST OK
Hint "Requesting a FOB...";
player sidechat "Requesting a FOB on my position...";

_trg=createTrigger["EmptyDetector",_position];
_trg setTriggerArea[_size,_size,0,false];

if(PlayableSide == west) then
{
    _trg setTriggerActivation["EAST","PRESENT",true];
};

if(PlayableSide == east) then
{
    _trg setTriggerActivation["WEST","PRESENT",true];
};

_trg setTriggerStatements["this", "", ""];
sleep 10;
_amountOPFOR = count list _trg;

deleteVehicle _trg;

if (_amountOPFOR > 3) exitWith {
Hint "This position is not clear from enemies";
PAPABEAR sidechat "Request denied. Enemies are too close to this position."; 
sleep 15;
  _repfob = [player,"fob_support"] call BIS_fnc_addCommMenuItem;
  DUWSrepfob = _repfob;
};

// try to find a pos, if no pos is found exit the script
_foundPickupPos = [_position, 0,50,10,0,0.2,0,[],[[0,0],[0,0]]] call BIS_fnc_findSafePos; // find a valid pos
if (0 == _foundPickupPos select 0 && 0 == _foundPickupPos select 1) exitWith {hint "No valid FOB pos nearby\nTry to go near a flat, object free zone."; sleep 5; _art = [player,"fob_support"] call BIS_fnc_addCommMenuItem;};

// LA ZONE EST OK

commandpoints = commandpoints - 10;
publicVariable "commandpoints";
PAPABEAR sidechat "Roger that, the FOB is being deployed...";

_fobname = [1] call compile preprocessFile "random_name.sqf";
// create marker on FOB
_markername = format["fob%1%2",round (_foundPickupPos select 0),round (_foundPickupPos select 1)]; // Define marker name
//hint _markername;
_markerstr = createMarker [str(_markername), _foundPickupPos];
_markerstr setMarkerShape "ICON";
str(_markername) setMarkerType "loc_Bunker";
str(_markername) setMarkerColor "ColorBLUFOR";
str(_markername) setMarkerText format["FOB %1",_fobname];
str(_markername) setMarkerSize [2.5, 2.5];
fobname = _fobname;
publicvariable "fobname"; 



sleep 5;


_fob = "Land_Cargo_HQ_V1_F" createVehicle _foundPickupPos;

DUWS_fnc_fob = {
	_this addaction ["<t color='#ffbe1a'>Player Stats</t>","dialog\info\info.sqf", "", 0, true, true, "", "_this == player"];
    _this addAction ["<t color='#ff0066'>Heal (2CP)</t>", "heal.sqf", "", 0, true, true, "", "_this == player"];
    if (support_armory_available) then {_this addaction ["<t color='#ff0066'>Armory 1 (VAS)</t>","VAS\open.sqf", "", 0, true, true, "", "_this == player"];};
	if (support_armory_available) then {_this addaction ["<t color='#ff0066'>Armory 2 (VA)</t>","va.sqf", "", 0, true, true, "", "_this == player"];};
    if (support_halo_available) then {_this addAction ["<t color='#15ff00'>HALO Alone (5CP)</t>", "ATM_airdrop\atm_airdrop.sqf", "", 0, true, true, "", "_this == player"];};
	if (support_halo_available) then {_this addAction ["<t color='#15ff00'>HALO Group (5CP)</t>", "COB_HALO\grphalo.sqf", "", 0, true, true, "", "_this == player"];};
    _this addaction ["<t color='#15ff00'>FOB/Teleport</t>","dialog\fob\FOBmanageropen.sqf", "", 0, true, true, "", "_this == player"];
    _this addaction ["<t color='#99ff00'>REQUESTS MENU>></t>","dialog\request_fob.sqf", "", 6, true, true, "", "_this == player"];
    _this addaction ["<t color='#ffb700'>Squad Manager</t>","dialog\squad\squadmng.sqf", "", 0, true, true, "", "_this == player"];
    
	if (isServer) then {
	_this addaction ["<t color='#00b7ff'>Rest (wait/save)</t>","savegame.sqf", "", 0, true, true, "", "_this == player"];
	};
	if (!isServer) then {
	_this addaction ["<t color='#00b7ff'>Rest</t>","savegameClient.sqf", "", 0, true, true, "", "_this == player"];
	};	
};
[_fob,"DUWS_fnc_fob",true,true] spawn BIS_fnc_MP; // [_fob,"DUWS_fnc_fob",nil,true] spawn BIS_fnc_MP;

// For fortifying
_fob addaction ["<t color='#ff0000'>Fortify FOB(4CP)</t>","inithq\fortifyFOB.sqf", getpos _fob, 0, true, true, "", "_this == player"];

PAPABEAR sidechat "The FOB has been deployed.";

/////////////////////////////////////////////////////////////////////////////
if (Warcom_Limiter_Param == 1) then {
[_foundPickupPos, _size] execvm "createpatrol.sqf";
[_foundPickupPos, _size] execvm "createpatrol.sqf";
_handle = [_foundPickupPos] execVM "initHQ\guards_limited.sqf";
}
else {
[_foundPickupPos, _size] execvm "createpatrol.sqf";
[_foundPickupPos, _size] execvm "createpatrol.sqf";
[_foundPickupPos, _size] execvm "createpatrol.sqf";
_handle = [_foundPickupPos] execVM "initHQ\guards.sqf";
};
////////////////////////////////////////////////////////////////////////////



// CREATE ZONE NOTIFICATION TRIGGER
_size = 75;
_trg23=createTrigger["EmptyDetector",_foundPickupPos];
_trg23 triggerAttachVehicle [player];
_trg23 setTriggerArea[_size,_size,0,false];
_trg23 setTriggerActivation["VEHICLE","PRESENT",true];
_trg23 setTriggerStatements["this", format["[""FOB %1"",thislist] execvm 'enterlocation.sqf'",_fobname], ""];

// warning trigger when an enemy approaches the camp
_trgWarning=createTrigger["EmptyDetector",_foundPickupPos];
_trgWarning setTriggerArea[500,500,0,false];

if(PlayableSide == west) then
{
    _trgWarning setTriggerActivation["EAST","PRESENT",true];
};

if(PlayableSide == east) then
{
    _trgWarning setTriggerActivation["WEST","PRESENT",true];
};

//_trgWarning setTriggerStatements["this",format["PAPABEAR sidechat 'This is HQ, enemies have been reported around FOB %1';execVM 'warningfob.sqf'",_fobname], ""];
_trgWarning setTriggerStatements["this","[]execVM 'warningfob.sqf'", ""];





//ADD THE FOB TO Array_of_FOBS
fobSwitch = true; // tell that this is the player who created the FOB (to avoid variableEventHandler to trigger)
Array_of_FOBS = Array_of_FOBS + [_fob];
publicVariable "Array_of_FOBS";

Array_of_FOBname = Array_of_FOBname + [_fobname];
publicVariable "Array_of_FOBname";


sleep 1;
enableSaving true;
sleep 0.1;
//saveGame;
enableSaving [ false, false ];
sleep 1;

sleep 300;
_repfob = [player,"fob_support"] call BIS_fnc_addCommMenuItem;
DUWSrepfob = _repfob;


// Land_Cargo_HQ_V1_F
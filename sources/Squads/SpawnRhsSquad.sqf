/*

USAGE EXAMPLE:

_scriptExec = [] execVM "SpawnRhsSquad.sqf";
waitUntil {scriptDone _scriptExec};

SQUAD = ((OPFOR_ASSAULT_SQUADS select 1) select 1);
UNITEGROUP = [[1774,5888,0], SQUAD, east] call SpawnRhsSquad;

*/

SpawnRhsSquad = {
_position = _this select 0;
_squadInfo = _this select 1; //[commander vehicle, [squad units (infantry)], [other vehicles]]
_side = _this select 2; //west/east

_group = grpNull;
_groupCommander = objNull;
_commanderIsVehicle = false;

// spawn commander vehicle if exists
if ((_squadInfo select 0) != "") then
{
    _commanderIsVehicle = true;
    _modifiedPosition = [(_position select 0)+5, (_position select 1)+5];
    _commanderVehicleSpawn = [_modifiedPosition, 0, (_squadInfo select 0), _side] call BIS_fnc_spawnVehicle;
    _group = (_commanderVehicleSpawn select 2);

    _groupCommander = leader _group;
    
    _vehicle = (_vehicleSpawn select 0);
    _group addVehicle _vehicle;
}
else
{
    _group = createGroup _side;
};

_iteratorPosition = [(_position select 0)+8, (_position select 1)+8];
// spawn other vehicles
if(count (_squadInfo select 2) != 0) then {
  {          
  sleep 0.5;
      _iteratorPosition = [(_iteratorPosition select 0)+8, (_iteratorPosition select 1)+8];

      _vehicleSpawn = [_iteratorPosition, 0, _x, _side] call BIS_fnc_spawnVehicle;
      _vehicle = (_vehicleSpawn select 0);
      _vehicleUnits = (_vehicleSpawn select 2);

      {
       [_x] join _group;
      } forEach (units _vehicleUnits);
      
      _group addVehicle _vehicle;


  } forEach (_squadInfo select 2);
};

// spawn infantry
{     
  sleep 0.1;
    _group createUnit [_x, _position, [], 0, "FORM"];
} forEach (_squadInfo select 1);


// return group
_group


}


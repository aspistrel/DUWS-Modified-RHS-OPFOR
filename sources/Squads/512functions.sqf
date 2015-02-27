/*

USAGE EXAMPLE:

_scriptExec = [] execVM "SpawnRhsSquad.sqf";
waitUntil {scriptDone _scriptExec};

SQUAD = ((OPFOR_ASSAULT_SQUADS select 1) select 1);
UNITEGROUP = [[1774,5888,0], SQUAD, east] call SpawnRhsSquad;

*/


Rhs_paradrop =
{
  _dropped      = (_this select 0);
	_veh_pos      = (_this select 1);
	private ["_chute"];
	_chute_type   = "B_Parachute_02_F";
	_chute = createVehicle [_chute_type, [((_veh_pos) select 0) - 5,((_veh_pos) select 1) - 10,((_veh_pos) select 2)- 4], [], 0, "FLY"];
	_dropped attachTo [_chute,[0,0,0]];
	
  while {((getPos _chute) select 2) > 6} do {sleep 0.25;};
  detach _dropped;	
};

SpawnRhsSquad = {
_position = _this select 0;
_squadInfo = _this select 1; //[commander vehicle, [squad units (infantry)], [other vehicles]]
_side = _this select 2; //west/east
_spawnVehiclesOnAir = _this select 3;

_group = grpNull;
_groupCommander = objNull;
_commanderIsVehicle = false;

_collectedVehicles = [];

// spawn commander vehicle if exists
if ((_squadInfo select 0) != "") then
{
    _commanderIsVehicle = true;
    _modifiedPosition = [(_position select 0)+5, (_position select 1)+5];

    if(_spawnVehiclesOnAir == 1) then
    {
        _modifiedPosition = [(_position select 0)+5, (_position select 1)+5, 300];
    };

    _commanderVehicleSpawn = [_modifiedPosition, 0, (_squadInfo select 0), _side] call BIS_fnc_spawnVehicle;
    _collectedVehicles = _collectedVehicles + [_commanderVehicleSpawn];

    _group = (_commanderVehicleSpawn select 2);

    _groupCommander = leader _group;

    _vehicle = (_commanderVehicleSpawn select 0);
    _group addVehicle _vehicle;
    sleep 0.01;
}
else
{
    _group = createGroup _side;
};

_iteratorPosition = [(_position select 0)+8, (_position select 1)+8];
// spawn other vehicles
if(count (_squadInfo select 2) != 0) then
{
    {
        if(_spawnVehiclesOnAir == 0) then
        {
            _iteratorPosition = [(_iteratorPosition select 0)+8, (_iteratorPosition select 1)+8];
        }
        else
        {
            _iteratorPosition = [(_iteratorPosition select 0)+8, (_iteratorPosition select 1)+8, 300];
        };

        _vehicleSpawn = [_iteratorPosition, 0, _x, _side] call BIS_fnc_spawnVehicle;
        _vehicle = (_vehicleSpawn select 0);
        _collectedVehicles = _collectedVehicles + [_vehicleSpawn];
        _vehicleUnits = (_vehicleSpawn select 2);

        {
            [_x] join _group;
        } forEach (units _vehicleUnits);

        _group addVehicle _vehicle;

        sleep 0.01;

    } forEach (_squadInfo select 2);
};

// spawn infantry
{     
    _group createUnit [_x, _position, [], 0, "FORM"];
} forEach (_squadInfo select 1);


// return array
[_group, _collectedVehicles]
};




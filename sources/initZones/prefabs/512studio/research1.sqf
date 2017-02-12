//////////////////////
// -- ADD THIS -- 1 //
//////////////////////
_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;
/////////////////
// -- END -- 1 //
/////////////////

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4016.724, 4009.008, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [4016.724, 4009.008, -0.000319004];

///////////////////////
// -- ADD THIS --  2 //
///////////////////////
_centerObj = getPos _currentVehicle;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _currentVehicle;
/////////////////
// -- END -- 2 //
/////////////////

_vehiclesArray = [];
_infantryMoveSpotsArray = [];
_vehiclesMoveSpotsArray = [];

_currentVehicle = createVehicle ["Land_Cargo_House_V1_F", [4010.22, 4007.77, -9.53674E-07], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 285.444;
_currentVehicle setPos [(4010.22)-_centerX+_centerSpawnX, (4007.77)-_centerY+_centerSpawnY, -9.53674E-07];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4007.92, 4001.43, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 15.3326;
_currentVehicle setPos [(4007.92)-_centerX+_centerSpawnX, (4001.43)-_centerY+_centerSpawnY, -9.53674E-07];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4008.98, 4014.32, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 9.35519;
_currentVehicle setPos [(4008.98)-_centerX+_centerSpawnX, (4014.32)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4001.7, 4006.538, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 83.7734;
_currentVehicle setPos [(4001.7)-_centerX+_centerSpawnX, (4006.538)-_centerY+_centerSpawnY, 0.285022];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_grey_F", [4015.81, 4002.93, 9.53674E-07], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 301.014;
_currentVehicle setPos [(4015.81)-_centerX+_centerSpawnX, (4002.93)-_centerY+_centerSpawnY, 9.53674E-07];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_Flag_Russia_F", [4011.52, 4006.3, -4.76837E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 192.668;
_currentVehicle setPos [(4011.52)-_centerX+_centerSpawnX, (4006.3)-_centerY+_centerSpawnY, -4.76837E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4006.78, 4011.12, 5.72205E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 104.75;
_currentVehicle setPos [(4006.78)-_centerX+_centerSpawnX, (4011.12)-_centerY+_centerSpawnY, 5.72205E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_3_F", [4009.82, 4011.85, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 15.8872;
_currentVehicle setPos [(4009.82)-_centerX+_centerSpawnX, (4011.85)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_FieldToilet_F", [4006.87, 4004.74, -0.0249858], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 14.0852;
_currentVehicle setPos [(4006.87)-_centerX+_centerSpawnX, (4004.74)-_centerY+_centerSpawnY, -0.0249858];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterTank_F", [4017.81, 4006.14, -6.67572E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 30.6555;
_currentVehicle setPos [(4017.81)-_centerX+_centerSpawnX, (4006.14)-_centerY+_centerSpawnY, -6.67572E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4014.31, 4013.63, -7.62939E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4014.31)-_centerX+_centerSpawnX, (4013.63)-_centerY+_centerSpawnY, -7.62939E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4017.96, 4012.14, 2.38419E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 11.829;
_currentVehicle setPos [(4017.96)-_centerX+_centerSpawnX, (4012.14)-_centerY+_centerSpawnY, 2.38419E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4002.15, 4014.19, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 132.659;
_currentVehicle setPos [(4002.15)-_centerX+_centerSpawnX, (4014.19)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4003.98, 4015.02, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 262.133;
_currentVehicle setPos [(4003.98)-_centerX+_centerSpawnX, (4015.02)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4016.14, 4012.71, -1.04904E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 16.4987;
_currentVehicle setPos [(4016.14)-_centerX+_centerSpawnX, (4012.71)-_centerY+_centerSpawnY, -1.04904E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4001.88, 4011.86, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 108.034;
_currentVehicle setPos [(4001.88)-_centerX+_centerSpawnX, (4011.86)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4008.31, 4011.9, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 103.437;
_currentVehicle setPos [(4008.31)-_centerX+_centerSpawnX, (4011.9)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_full_F", [4009.81, 4003.93, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 109.559;
_currentVehicle setPos [(4009.81)-_centerX+_centerSpawnX, (4003.93)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_closed_F", [4006.88, 4012.61, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 14.5044;
_currentVehicle setPos [(4006.88)-_centerX+_centerSpawnX, (4012.61)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_closed_F", [4005.27, 4013.04, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 14.5044;
_currentVehicle setPos [(4005.27)-_centerX+_centerSpawnX, (4013.04)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4012.05, 4005.56, -0.0476732], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 276.595;
_currentVehicle setPos [(4012.05)-_centerX+_centerSpawnX, (4005.56)-_centerY+_centerSpawnY, 0.524491];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_F", [4015.43, 4005.07, 1.71661E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 119.673;
_currentVehicle setPos [(4015.43)-_centerX+_centerSpawnX, (4005.07)-_centerY+_centerSpawnY, 1.71661E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Bench_F", [4013.35, 4010.01, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 14.8775;
_currentVehicle setPos [(4013.35)-_centerX+_centerSpawnX, (4010.01)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PalletTrolley_01_yellow_F", [4008.45, 4004.39, 3.09944E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 101.072;
_currentVehicle setPos [(4008.45)-_centerX+_centerSpawnX, (4004.39)-_centerY+_centerSpawnY, 3.09944E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PlasticCase_01_large_F", [4002.56, 4009.46, -0.0249991], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 173.58;
_currentVehicle setPos [(4002.56)-_centerX+_centerSpawnX, (4009.46)-_centerY+_centerSpawnY, -0.0249991];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalCase_01_large_F", [4003.07, 4011.51, -2.38419E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 202.305;
_currentVehicle setPos [(4003.07)-_centerX+_centerSpawnX, (4011.51)-_centerY+_centerSpawnY, -2.38419E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingChair_V1_F", [4013.55, 4002.31, 0.00312376], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 133.852;
_currentVehicle setPos [(4013.55)-_centerX+_centerSpawnX, (4002.31)-_centerY+_centerSpawnY, 0.00312376];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingChair_V1_F", [4013.99, 4003.41, 0.00312519], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 85.458;
_currentVehicle setPos [(4013.99)-_centerX+_centerSpawnX, (4003.41)-_centerY+_centerSpawnY, 0.00312519];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterCooler_01_new_F", [4011.76, 4004.53, 0.000101566], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 102.84;
_currentVehicle setPos [(4011.76)-_centerX+_centerSpawnX, (4004.53)-_centerY+_centerSpawnY, 0.000101566];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CanisterPlastic_F", [4011.7, 4006.76, -0.025002], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 138.895;
_currentVehicle setPos [(4011.7)-_centerX+_centerSpawnX, (4006.76)-_centerY+_centerSpawnY, -0.025002];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PlasticCase_01_small_F", [4005.44, 4010.46, 4.76837E-07], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.997;
_currentVehicle setPos [(4005.44)-_centerX+_centerSpawnX, (4010.46)-_centerY+_centerSpawnY, 4.76837E-07];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4016.724, 4009.008, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [(4016.724)-_centerX+_centerSpawnX, (4009.008)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_infantryMoveSpotsArray = _infantryMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PencilGreen_F", [4027.722, 4010.13, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [(4027.722)-_centerX+_centerSpawnX, (4010.13)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_vehiclesMoveSpotsArray = _vehiclesMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PencilGreen_F", [4010.781, 4018.141, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 100;
_currentVehicle setPos [(4010.781)-_centerX+_centerSpawnX, (4018.141)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_vehiclesMoveSpotsArray = _vehiclesMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PencilGreen_F", [4019.893, 4000.408, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 40;
_currentVehicle setPos [(4019.893)-_centerX+_centerSpawnX, (4000.408)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_vehiclesMoveSpotsArray = _vehiclesMoveSpotsArray + [_currentVehicle];

//return
[_vehiclesArray, _infantryMoveSpotsArray, _vehiclesMoveSpotsArray]


/*
{
    _x enableSimulation false;
    _x allowDamage false;
	_x setPos [(getpos _x) select 0, (getpos _x) select 1, ((getpos _x) select 2) - 5];
} forEach _vehiclesArray;


for "_i" from 1 to 20 do
{
	{
        _x setPos [(getpos _x) select 0, (getpos _x) select 1, ((getpos _x) select 2) + 0.25];
	} forEach _vehiclesArray;
	sleep 0.5;
};

{
    _x enableSimulation true;
    _x allowDamage true;
} forEach _vehiclesArray;

{
    _x enableSimulation true;
    _x allowDamage true;
} forEach _vehiclesArray;

}

for [
{ _i = 1 },
{ _i <= 10 },
{ _i = _i + 1 }] do
{
    _x setPos [(getpos _x) select 0, (getpos _x) select 1, ((getpos _x) select 2) + 0.5];
};

for "_i" from 1 to 10 do
{
    _null = _x spawn
    {
        _this setPos [(getpos _this) select 0, (getpos _this) select 1, ((getpos _this) select 2) + 0.5];
        sleep 3;
    };
};

{
    _x enableSimulation false;
    _x allowDamage false;
	_x setPos [(getpos _x) select 0, (getpos _x) select 1, ((getpos _x) select 2) - 5];
	for "_i" from 1 to 10 do
	{
        _x setPos [(getpos _x) select 0, (getpos _x) select 1, ((getpos _x) select 2) + 0.5];
        sleep 3;
	};
} forEach _vehiclesArray;
*/
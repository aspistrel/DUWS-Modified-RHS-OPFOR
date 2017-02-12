[_this select 0, _this select 1] spawn {

//////////////////////
// -- ADD THIS -- 1 //
//////////////////////
_centerSpawn = _this select 0;
_unitsTrg = _this select 1;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;
/////////////////
// -- END -- 1 //
/////////////////

_unitsArray = []; // non-Empty units in trigger area

player sideChat str count _unitsTrg;
{
    _x enableSimulation false;
    _x allowDamage false;
    _unitsArray = _unitsArray + [_x];
} forEach _unitsTrg;

VehiclesArray = []; // prefab's objects

_currentVehicle = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [4047.29, 4012.37, -0.000169754], [], 0, "NONE"];
_currentVehicle setDir 0.0285556;
_currentVehicle setPos [4047.29, 4012.37, -0.000169754];
deleteVehicle _currentVehicle;

///////////////////////
// -- ADD THIS --  2 //
///////////////////////
_centerObj = getPos _currentVehicle;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
/////////////////
// -- END -- 2 //
/////////////////

_currentVehicle = createVehicle ["Land_Cargo_Patrol_V1_F", [4050.95, 3987.04, 0], [], 0, "NONE"];
_currentVehicle setDir 41.5975;
_currentVehicle setPos [(4050.95)-_centerX+_centerSpawnX, (3987.04)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4059.93, 3983.52, 0], [], 0, "NONE"];
_currentVehicle setDir 270.377;
_currentVehicle setPos [(4059.93)-_centerX+_centerSpawnX, (3983.52)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4045.09, 3999.17, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4045.09)-_centerX+_centerSpawnX, (3999.17)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4045.3, 3990.56, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4045.3)-_centerX+_centerSpawnX, (3990.56)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4054.68, 3980.84, 0], [], 0, "NONE"];
_currentVehicle setDir 182.005;
_currentVehicle setPos [(4054.68)-_centerX+_centerSpawnX, (3980.84)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4048.43, 3983.66, 0], [], 0, "NONE"];
_currentVehicle setDir 232.076;
_currentVehicle setPos [(4048.43)-_centerX+_centerSpawnX, (3983.66)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall4_F", [4061.75, 3981.61, 0], [], 0, "NONE"];
_currentVehicle setDir 179.21;
_currentVehicle setPos [(4061.75)-_centerX+_centerSpawnX, (3981.61)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Razorwire_F", [4057.71, 3972.99, -2.38419E-06], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4057.71)-_centerX+_centerSpawnX, (3972.99)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4047.13, 3999.1, 0], [], 0, "NONE"];
_currentVehicle setDir 89.7861;
_currentVehicle setPos [(4047.13)-_centerX+_centerSpawnX, (3999.1)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4048.06, 3996.05, 0], [], 0, "NONE"];
_currentVehicle setDir 89.7338;
_currentVehicle setPos [(4048.06)-_centerX+_centerSpawnX, (3996.05)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4048.05, 3999.67, 0], [], 0, "NONE"];
_currentVehicle setDir 89.7338;
_currentVehicle setPos [(4048.05)-_centerX+_centerSpawnX, (3999.67)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ToiletBox_F", [4056.42, 3982.97, -0.0249906], [], 0, "NONE"];
_currentVehicle setDir 176.69;
_currentVehicle setPos [(4056.42)-_centerX+_centerSpawnX, (3982.97)-_centerY+_centerSpawnY, -0.0249906];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ToiletBox_F", [4057.63, 3983.05, 1.28746E-05], [], 0, "NONE"];
_currentVehicle setDir 178.274;
_currentVehicle setPos [(4057.63)-_centerX+_centerSpawnX, (3983.05)-_centerY+_centerSpawnY, 1.23978E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4047.22, 3992.95, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4047.22)-_centerX+_centerSpawnX, (3992.95)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4048.97, 3992.9, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4048.97)-_centerX+_centerSpawnX, (3992.9)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Mil_ConcreteWall_F", [4050.57, 3999.82, 1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 89.7066;
_currentVehicle setPos [(4050.57)-_centerX+_centerSpawnX, (3999.82)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Mil_ConcreteWall_F", [4050.6, 3995.33, 1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 89.7066;
_currentVehicle setPos [(4050.6)-_centerX+_centerSpawnX, (3995.33)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4061.81, 3975.81, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 1.5014;
_currentVehicle setPos [(4061.81)-_centerX+_centerSpawnX, (3975.81)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingTable_F", [4063.02, 3998.24, 0], [], 0, "NONE"];
_currentVehicle setDir 204.098;
_currentVehicle setPos [(4063.02)-_centerX+_centerSpawnX, (3998.24)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Bench_F", [4063.93, 3996.14, 1.43051E-06], [], 0, "NONE"];
_currentVehicle setDir 115.921;
_currentVehicle setPos [(4063.93)-_centerX+_centerSpawnX, (3996.14)-_centerY+_centerSpawnY, 1.43051E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_FoodContainer_01_F", [4062.16, 3997.93, 2.67029E-05], [], 0, "NONE"];
_currentVehicle setDir 359.694;
_currentVehicle setPos [(4062.16)-_centerX+_centerSpawnX, (3997.93)-_centerY+_centerSpawnY, 2.6226E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo_House_V1_F", [4075.84, 3998.43, 0.592812], [], 0, "NONE"];
_currentVehicle setDir 89.2413;
_currentVehicle setPos [(4075.84)-_centerX+_centerSpawnX, (3998.43)-_centerY+_centerSpawnY, 0.592812];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4073.69, 3983.32, 0], [], 0, "NONE"];
_currentVehicle setDir 270.377;
_currentVehicle setPos [(4073.69)-_centerX+_centerSpawnX, (3983.32)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4080.74, 3997.4, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4080.74)-_centerX+_centerSpawnX, (3997.4)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4091.93, 3999.61, 0], [], 0, "NONE"];
_currentVehicle setDir 42.1622;
_currentVehicle setPos [(4091.93)-_centerX+_centerSpawnX, (3999.61)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4080.89, 3988.73, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4080.89)-_centerX+_centerSpawnX, (3988.73)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall_corner_F", [4079.76, 3981.71, 0], [], 0, "NONE"];
_currentVehicle setDir 91.793;
_currentVehicle setPos [(4079.76)-_centerX+_centerSpawnX, (3981.71)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall4_F", [4074.96, 3981.19, 0], [], 0, "NONE"];
_currentVehicle setDir 179.21;
_currentVehicle setPos [(4074.96)-_centerX+_centerSpawnX, (3981.19)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Razorwire_F", [4075.49, 3973, -2.38419E-06], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4075.49)-_centerX+_centerSpawnX, (3973)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4075.82, 3989.52, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4075.82)-_centerX+_centerSpawnX, (3989.52)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4078.72, 3994.47, 0], [], 0, "NONE"];
_currentVehicle setDir 180.796;
_currentVehicle setPos [(4078.72)-_centerX+_centerSpawnX, (3994.47)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterTank_F", [4077.3, 3991.94, -4.29153E-06], [], 0, "NONE"];
_currentVehicle setDir 360;
_currentVehicle setPos [(4077.3)-_centerX+_centerSpawnX, (3991.94)-_centerY+_centerSpawnY, -4.76837E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4072.01, 3973.55, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4072.01)-_centerX+_centerSpawnX, (3973.55)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4064.6, 3973.74, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4064.6)-_centerX+_centerSpawnX, (3973.74)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4068.28, 3978.56, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4068.28)-_centerX+_centerSpawnX, (3978.56)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4070.37, 3989.39, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 30.591;
_currentVehicle setPos [(4070.37)-_centerX+_centerSpawnX, (3989.39)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4066.18, 3981.92, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 328.523;
_currentVehicle setPos [(4066.18)-_centerX+_centerSpawnX, (3981.92)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4074.33, 3975.68, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 1.5014;
_currentVehicle setPos [(4074.33)-_centerX+_centerSpawnX, (3975.68)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4072.73, 3994.82, 0], [], 0, "NONE"];
_currentVehicle setDir 108.349;
_currentVehicle setPos [(4072.73)-_centerX+_centerSpawnX, (3994.82)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4075.05, 3992.7, 8.10623E-06], [], 0, "NONE"];
_currentVehicle setDir 0.260284;
_currentVehicle setPos [(4075.05)-_centerX+_centerSpawnX, (3992.7)-_centerY+_centerSpawnY, 7.62939E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4074.97, 3991.25, 7.15256E-06], [], 0, "NONE"];
_currentVehicle setDir 359.224;
_currentVehicle setPos [(4074.97)-_centerX+_centerSpawnX, (3991.25)-_centerY+_centerSpawnY, 6.67572E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BarrelTrash_grey_F", [4073.91, 3996.32, 5.91278E-05], [], 0, "NONE"];
_currentVehicle setDir 359.807;
_currentVehicle setPos [(4073.91)-_centerX+_centerSpawnX, (3996.32)-_centerY+_centerSpawnY, 5.91278E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4068.3, 3994.36, -0.00113535], [], 0, "NONE"];
_currentVehicle setDir 359.921;
_currentVehicle setPos [(4068.3)-_centerX+_centerSpawnX, (3994.36)-_centerY+_centerSpawnY, -0.000320911];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4099.98, 3997.23, 0], [], 0, "NONE"];
_currentVehicle setDir 180.486;
_currentVehicle setPos [(4099.98)-_centerX+_centerSpawnX, (3997.23)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4116.64, 3999.56, 0], [], 0, "NONE"];
_currentVehicle setDir 333.909;
_currentVehicle setPos [(4116.64)-_centerX+_centerSpawnX, (3999.56)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4108.63, 3997.24, 0], [], 0, "NONE"];
_currentVehicle setDir 180.486;
_currentVehicle setPos [(4108.63)-_centerX+_centerSpawnX, (3997.24)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ToiletBox_F", [4101.49, 3999.5, -2.0504E-05], [], 0, "NONE"];
_currentVehicle setDir 188.724;
_currentVehicle setPos [(4101.49)-_centerX+_centerSpawnX, (3999.5)-_centerY+_centerSpawnY, -2.0504E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo_House_V1_F", [4028.02, 4016.39, -9.53674E-07], [], 0, "NONE"];
_currentVehicle setDir 285.444;
_currentVehicle setPos [(4028.02)-_centerX+_centerSpawnX, (4016.39)-_centerY+_centerSpawnY, -9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4024.58, 4019.74, 5.72205E-06], [], 0, "NONE"];
_currentVehicle setDir 104.75;
_currentVehicle setPos [(4024.58)-_centerX+_centerSpawnX, (4019.74)-_centerY+_centerSpawnY, 5.72205E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_3_F", [4027.62, 4020.47, 0], [], 0, "NONE"];
_currentVehicle setDir 15.8872;
_currentVehicle setPos [(4027.62)-_centerX+_centerSpawnX, (4020.47)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4026.11, 4020.51, 0], [], 0, "NONE"];
_currentVehicle setDir 103.437;
_currentVehicle setPos [(4026.11)-_centerX+_centerSpawnX, (4020.51)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_FieldToilet_F", [4025.34, 4012.09, 1.23978E-05], [], 0, "NONE"];
_currentVehicle setDir 343.937;
_currentVehicle setPos [(4025.34)-_centerX+_centerSpawnX, (4012.09)-_centerY+_centerSpawnY, 1.23978E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CanisterPlastic_F", [4029.5, 4015.37, -1.90735E-06], [], 0, "NONE"];
_currentVehicle setDir 138.712;
_currentVehicle setPos [(4029.5)-_centerX+_centerSpawnX, (4015.37)-_centerY+_centerSpawnY, -1.90735E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_Flag_Russia_F", [4029.32, 4014.91, -4.76837E-06], [], 0, "NONE"];
_currentVehicle setDir 192.668;
_currentVehicle setPos [(4029.32)-_centerX+_centerSpawnX, (4014.91)-_centerY+_centerSpawnY, -4.76837E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Bench_F", [4031.15, 4018.62, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 14.8761;
_currentVehicle setPos [(4031.15)-_centerX+_centerSpawnX, (4018.62)-_centerY+_centerSpawnY, 4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4029.34, 4014.11, -0.0249944], [], 0, "NONE"];
_currentVehicle setDir 0.00100908;
_currentVehicle setPos [(4029.34)-_centerX+_centerSpawnX, (4014.11)-_centerY+_centerSpawnY, -0.0249949];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4025.72, 4010.05, -9.53674E-07], [], 0, "NONE"];
_currentVehicle setDir 15.3326;
_currentVehicle setPos [(4025.72)-_centerX+_centerSpawnX, (4010.05)-_centerY+_centerSpawnY, -9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["CamoNet_INDP_Curator_F", [4061.42, 4000.52, 0], [], 0, "NONE"];
_currentVehicle setDir 36.9591;
_currentVehicle setPos [(4061.42)-_centerX+_centerSpawnX, (4000.52)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4049.87, 4015.4, 0.023488], [], 0, "NONE"];
_currentVehicle setDir 359.826;
_currentVehicle setPos [(4049.87)-_centerX+_centerSpawnX, (4015.4)-_centerY+_centerSpawnY, 0.023488];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4044.55, 4025.57, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4044.55)-_centerX+_centerSpawnX, (4025.57)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4044.97, 4007.99, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4044.97)-_centerX+_centerSpawnX, (4007.99)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4044.75, 4016.78, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4044.75)-_centerX+_centerSpawnX, (4016.78)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall_corridor_F", [4058.49, 4015.93, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4058.49)-_centerX+_centerSpawnX, (4015.93)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_grey_F", [4033.74, 4011.27, 0], [], 0, "NONE"];
_currentVehicle setDir 288.543;
_currentVehicle setPos [(4033.74)-_centerX+_centerSpawnX, (4011.27)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4059.63, 4008.66, 0], [], 0, "NONE"];
_currentVehicle setDir 251.287;
_currentVehicle setPos [(4059.63)-_centerX+_centerSpawnX, (4008.66)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4047.04, 4004.65, 0], [], 0, "NONE"];
_currentVehicle setDir 89.7861;
_currentVehicle setPos [(4047.04)-_centerX+_centerSpawnX, (4004.65)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4063.13, 4004.46, 0], [], 0, "NONE"];
_currentVehicle setDir 228.837;
_currentVehicle setPos [(4063.13)-_centerX+_centerSpawnX, (4004.46)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4062.98, 4027.22, 0], [], 0, "NONE"];
_currentVehicle setDir 135.022;
_currentVehicle setPos [(4062.98)-_centerX+_centerSpawnX, (4027.22)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4058.09, 4018.73, 0], [], 0, "NONE"];
_currentVehicle setDir 284.278;
_currentVehicle setPos [(4058.09)-_centerX+_centerSpawnX, (4018.73)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["WaterPump_01_forest_F", [4048.59, 4028.18, 0.000863075], [], 0, "NONE"];
_currentVehicle setDir 66.6742;
_currentVehicle setPos [(4048.59)-_centerX+_centerSpawnX, (4028.18)-_centerY+_centerSpawnY, 0.000862598];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4059.89, 4020.76, 0], [], 0, "NONE"];
_currentVehicle setDir 103.314;
_currentVehicle setPos [(4059.89)-_centerX+_centerSpawnX, (4020.76)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4062.21, 4025.19, 0], [], 0, "NONE"];
_currentVehicle setDir 138.327;
_currentVehicle setPos [(4062.21)-_centerX+_centerSpawnX, (4025.19)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4062.44, 4006.43, 0], [], 0, "NONE"];
_currentVehicle setDir 48.1146;
_currentVehicle setPos [(4062.44)-_centerX+_centerSpawnX, (4006.43)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4060.08, 4010.23, 0], [], 0, "NONE"];
_currentVehicle setDir 71.2335;
_currentVehicle setPos [(4060.08)-_centerX+_centerSpawnX, (4010.23)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4048.04, 4003.42, 0], [], 0, "NONE"];
_currentVehicle setDir 89.7338;
_currentVehicle setPos [(4048.04)-_centerX+_centerSpawnX, (4003.42)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterTank_F", [4037.6, 4016.27, 0.0168781], [], 0, "NONE"];
_currentVehicle setDir 246.021;
_currentVehicle setPos [(4037.6)-_centerX+_centerSpawnX, (4016.27)-_centerY+_centerSpawnY, 0.705801];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4049.04, 4006.42, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4049.04)-_centerX+_centerSpawnX, (4006.42)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4047.12, 4006.42, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4047.12)-_centerX+_centerSpawnX, (4006.42)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4035.76, 4020.76, 2.38419E-06], [], 0, "NONE"];
_currentVehicle setDir 11.829;
_currentVehicle setPos [(4035.76)-_centerX+_centerSpawnX, (4020.76)-_centerY+_centerSpawnY, 2.38419E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4032.1, 4022.24, -7.62939E-06], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4032.1)-_centerX+_centerSpawnX, (4022.24)-_centerY+_centerSpawnY, -7.62939E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4033.94, 4021.32, -1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 16.4987;
_currentVehicle setPos [(4033.94)-_centerX+_centerSpawnX, (4021.32)-_centerY+_centerSpawnY, -1.04904E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Mil_ConcreteWall_F", [4050.6, 4004.09, 1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 89.7066;
_currentVehicle setPos [(4050.6)-_centerX+_centerSpawnX, (4004.09)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4055.02, 4011.76, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 39.6245;
_currentVehicle setPos [(4055.02)-_centerX+_centerSpawnX, (4011.76)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4054.65, 4020.08, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 147.637;
_currentVehicle setPos [(4054.65)-_centerX+_centerSpawnX, (4020.08)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Long_F", [4047.52, 4019.41, -0.000999928], [], 0, "NONE"];
_currentVehicle setDir 359.791;
_currentVehicle setPos [(4047.52)-_centerX+_centerSpawnX, (4019.41)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Long_F", [4047.79, 4010.51, -0.000999928], [], 0, "NONE"];
_currentVehicle setDir 359.791;
_currentVehicle setPos [(4047.79)-_centerX+_centerSpawnX, (4010.51)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_weapons_crate_ak_standard", [4047.5, 4015.48, 3.8147E-06], [], 0, "NONE"];
_currentVehicle setDir 271.124;
_currentVehicle setPos [(4047.5)-_centerX+_centerSpawnX, (4015.48)-_centerY+_centerSpawnY, 3.8147E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingTable_F", [4059.59, 4001.43, -2.38419E-06], [], 0, "NONE"];
_currentVehicle setDir 230.335;
_currentVehicle setPos [(4059.59)-_centerX+_centerSpawnX, (4001.43)-_centerY+_centerSpawnY, -2.38419E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_F", [4046.29, 4026.39, 3.14713E-05], [], 0, "NONE"];
_currentVehicle setDir 268.101;
_currentVehicle setPos [(4046.29)-_centerX+_centerSpawnX, (4026.39)-_centerY+_centerSpawnY, 3.14713E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Bench_F", [4060.89, 4002.83, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 326.83;
_currentVehicle setPos [(4060.89)-_centerX+_centerSpawnX, (4002.83)-_centerY+_centerSpawnY, 4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Bench_F", [4057.61, 4001.59, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 0.00687881;
_currentVehicle setPos [(4057.61)-_centerX+_centerSpawnX, (4001.59)-_centerY+_centerSpawnY, 4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Bench_F", [4063.58, 4000.37, 9.53674E-07], [], 0, "NONE"];
_currentVehicle setDir 115.935;
_currentVehicle setPos [(4063.58)-_centerX+_centerSpawnX, (4000.37)-_centerY+_centerSpawnY, 9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_Tall_F", [4046.38, 4025.03, 0.000105381], [], 0, "NONE"];
_currentVehicle setDir 132.607;
_currentVehicle setPos [(4046.38)-_centerX+_centerSpawnX, (4025.03)-_centerY+_centerSpawnY, 0.000105381];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [4047.29, 4012.37, -0.000169754], [], 0, "NONE"];
_currentVehicle setDir 0.0285556;
_currentVehicle setPos [(4047.29)-_centerX+_centerSpawnX, (4012.37)-_centerY+_centerSpawnY, -0.000169754];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalBarrel_F", [4050.84, 4025.95, 5.34058E-05], [], 0, "NONE"];
_currentVehicle setDir 359.944;
_currentVehicle setPos [(4050.84)-_centerX+_centerSpawnX, (4025.95)-_centerY+_centerSpawnY, 5.34058E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalBarrel_F", [4050.07, 4025.72, 5.43594E-05], [], 0, "NONE"];
_currentVehicle setDir 0.217254;
_currentVehicle setPos [(4050.07)-_centerX+_centerSpawnX, (4025.72)-_centerY+_centerSpawnY, 5.43594E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalBarrel_F", [4050.83, 4025.18, 5.43594E-05], [], 0, "NONE"];
_currentVehicle setDir 0.177766;
_currentVehicle setPos [(4050.83)-_centerX+_centerSpawnX, (4025.18)-_centerY+_centerSpawnY, 5.43594E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_FoodContainer_01_F", [4061.41, 4000.5, 2.67029E-05], [], 0, "NONE"];
_currentVehicle setDir 357.351;
_currentVehicle setPos [(4061.41)-_centerX+_centerSpawnX, (4000.5)-_centerY+_centerSpawnY, 2.6226E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_FoodContainer_01_F", [4061.79, 4000.48, 2.67029E-05], [], 0, "NONE"];
_currentVehicle setDir 356.655;
_currentVehicle setPos [(4061.79)-_centerX+_centerSpawnX, (4000.48)-_centerY+_centerSpawnY, 2.6226E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CarBattery_01_F", [4047.69, 4024.52, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 284.723;
_currentVehicle setPos [(4047.69)-_centerX+_centerSpawnX, (4024.52)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CarBattery_02_F", [4047.97, 4025.47, 0], [], 0, "NONE"];
_currentVehicle setDir 0.0579273;
_currentVehicle setPos [(4047.97)-_centerX+_centerSpawnX, (4025.47)-_centerY+_centerSpawnY, -4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_TTowerSmall_2_F", [4082.81, 4012.49, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4082.81)-_centerX+_centerSpawnX, (4012.49)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Medevac_house_V1_F", [4074.85, 4015.47, 0.590423], [], 0, "NONE"];
_currentVehicle setDir 270.055;
_currentVehicle setPos [(4074.85)-_centerX+_centerSpawnX, (4015.47)-_centerY+_centerSpawnY, 0.590423];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Medevac_house_V1_F", [4080.61, 4019.97, 0.592812], [], 0, "NONE"];
_currentVehicle setDir 0.27538;
_currentVehicle setPos [(4080.61)-_centerX+_centerSpawnX, (4019.97)-_centerY+_centerSpawnY, 0.592812];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Medevac_house_V1_F", [4080.62, 4011.14, 0.592812], [], 0, "NONE"];
_currentVehicle setDir 179.99;
_currentVehicle setPos [(4080.62)-_centerX+_centerSpawnX, (4011.14)-_centerY+_centerSpawnY, 0.592812];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4084.45, 4028.99, 0], [], 0, "NONE"];
_currentVehicle setDir 180.033;
_currentVehicle setPos [(4084.45)-_centerX+_centerSpawnX, (4028.99)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4073.16, 4008.35, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4073.16)-_centerX+_centerSpawnX, (4008.35)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4073.28, 4022.5, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4073.28)-_centerX+_centerSpawnX, (4022.5)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4084.38, 4002.72, 0], [], 0, "NONE"];
_currentVehicle setDir 181.367;
_currentVehicle setPos [(4084.38)-_centerX+_centerSpawnX, (4002.72)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Device_disassembled_F", [4091.72, 4015.63, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4091.72)-_centerX+_centerSpawnX, (4015.63)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_3_F", [4075.87, 4032.77, 0], [], 0, "NONE"];
_currentVehicle setDir 180.323;
_currentVehicle setPos [(4075.87)-_centerX+_centerSpawnX, (4032.77)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4094.81, 4015.84, 0], [], 0, "NONE"];
_currentVehicle setDir 91.3952;
_currentVehicle setPos [(4094.81)-_centerX+_centerSpawnX, (4015.84)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_white_F", [4084.97, 4020.69, 2.86102E-06], [], 0, "NONE"];
_currentVehicle setDir 270.814;
_currentVehicle setPos [(4084.97)-_centerX+_centerSpawnX, (4020.69)-_centerY+_centerSpawnY, 2.86102E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_white_F", [4074.46, 4019.97, -0.0250001], [], 0, "NONE"];
_currentVehicle setDir 359.455;
_currentVehicle setPos [(4074.46)-_centerX+_centerSpawnX, (4019.97)-_centerY+_centerSpawnY, -0.0250006];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_white_F", [4074.41, 4011.1, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 359.712;
_currentVehicle setPos [(4074.41)-_centerX+_centerSpawnX, (4011.1)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_white_F", [4085.02, 4010.43, -0.0250006], [], 0, "NONE"];
_currentVehicle setDir 90.1961;
_currentVehicle setPos [(4085.02)-_centerX+_centerSpawnX, (4010.43)-_centerY+_centerSpawnY, -0.0250006];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_military_green_F", [4093.46, 4029.57, 9.53674E-07], [], 0, "NONE"];
_currentVehicle setDir 141.143;
_currentVehicle setPos [(4093.46)-_centerX+_centerSpawnX, (4029.57)-_centerY+_centerSpawnY, 9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncWall4_F", [4071.22, 4015.5, 0], [], 0, "NONE"];
_currentVehicle setDir 270;
_currentVehicle setPos [(4071.22)-_centerX+_centerSpawnX, (4015.5)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncWall4_F", [4080.65, 4007.48, 0], [], 0, "NONE"];
_currentVehicle setDir 179.986;
_currentVehicle setPos [(4080.65)-_centerX+_centerSpawnX, (4007.48)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncWall4_F", [4080.73, 4023.6, 0], [], 0, "NONE"];
_currentVehicle setDir 359.67;
_currentVehicle setPos [(4080.73)-_centerX+_centerSpawnX, (4023.6)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_Flag_Russia_F", [4077.49, 4014.1, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4077.49)-_centerX+_centerSpawnX, (4014.1)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4073.44, 4002.8, 0], [], 0, "NONE"];
_currentVehicle setDir 180.796;
_currentVehicle setPos [(4073.44)-_centerX+_centerSpawnX, (4002.8)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4079.1, 4002.72, 0], [], 0, "NONE"];
_currentVehicle setDir 180.796;
_currentVehicle setPos [(4079.1)-_centerX+_centerSpawnX, (4002.72)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4063.67, 4028.07, 0], [], 0, "NONE"];
_currentVehicle setDir 305.385;
_currentVehicle setPos [(4063.67)-_centerX+_centerSpawnX, (4028.07)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4068.27, 4002.96, 0], [], 0, "NONE"];
_currentVehicle setDir 193.759;
_currentVehicle setPos [(4068.27)-_centerX+_centerSpawnX, (4002.96)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_3_F", [4072.99, 3999.49, 0], [], 0, "NONE"];
_currentVehicle setDir 270.075;
_currentVehicle setPos [(4072.99)-_centerX+_centerSpawnX, (3999.49)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4089.76, 4020.47, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4089.76)-_centerX+_centerSpawnX, (4020.47)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4091.67, 4020.45, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4091.67)-_centerX+_centerSpawnX, (4020.45)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4091.54, 4011.52, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4091.54)-_centerX+_centerSpawnX, (4011.52)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4089.62, 4011.54, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4089.62)-_centerX+_centerSpawnX, (4011.54)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4093.42, 4011.43, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4093.42)-_centerX+_centerSpawnX, (4011.43)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4093.56, 4020.36, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4093.56)-_centerX+_centerSpawnX, (4020.36)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Mil_ConcreteWall_F", [4078.07, 4029.32, 1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4078.07)-_centerX+_centerSpawnX, (4029.32)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Mil_ConcreteWall_F", [4073.01, 4029.35, 1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4073.01)-_centerX+_centerSpawnX, (4029.35)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Mil_ConcreteWall_F", [4068.1, 4029.37, 1.04904E-05], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4068.1)-_centerX+_centerSpawnX, (4029.37)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4066.09, 4015.93, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 89.6871;
_currentVehicle setPos [(4066.09)-_centerX+_centerSpawnX, (4015.93)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4090.61, 4008.72, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 308.742;
_currentVehicle setPos [(4090.61)-_centerX+_centerSpawnX, (4008.72)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4090.69, 4023.06, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 233.867;
_currentVehicle setPos [(4090.69)-_centerX+_centerSpawnX, (4023.06)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Pallet_MilBoxes_F", [4095.9, 4028.21, 0], [], 0, "NONE"];
_currentVehicle setDir 303.678;
_currentVehicle setPos [(4095.9)-_centerX+_centerSpawnX, (4028.21)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Long_F", [4066.8, 4012.78, -0.000999928], [], 0, "NONE"];
_currentVehicle setDir 270.973;
_currentVehicle setPos [(4066.8)-_centerX+_centerSpawnX, (4012.78)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Long_F", [4066.91, 4018.76, -0.000999928], [], 0, "NONE"];
_currentVehicle setDir 89.1255;
_currentVehicle setPos [(4066.91)-_centerX+_centerSpawnX, (4018.76)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4095.23, 4020.42, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4095.23)-_centerX+_centerSpawnX, (4020.42)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4095.08, 4011.23, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4095.08)-_centerX+_centerSpawnX, (4011.23)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_full_F", [4093.86, 4027.13, 0], [], 0, "NONE"];
_currentVehicle setDir 133.627;
_currentVehicle setPos [(4093.86)-_centerX+_centerSpawnX, (4027.13)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Portable_generator_F", [4095.27, 4002.43, -0.000828743], [], 0, "NONE"];
_currentVehicle setDir 359.502;
_currentVehicle setPos [(4095.27)-_centerX+_centerSpawnX, (4002.43)-_centerY+_centerSpawnY, -0.000825882];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Rack_F", [4070.04, 4001.71, 0.000162125], [], 0, "NONE"];
_currentVehicle setDir 96.0984;
_currentVehicle setPos [(4070.04)-_centerX+_centerSpawnX, (4001.71)-_centerY+_centerSpawnY, 0.000162125];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Fridge_01_closed_F", [4071.43, 4001.38, 4.29153E-05], [], 0, "NONE"];
_currentVehicle setDir 0.471581;
_currentVehicle setPos [(4071.43)-_centerX+_centerSpawnX, (4001.38)-_centerY+_centerSpawnY, 4.29153E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterCooler_01_new_F", [4068.81, 4001.45, 0.000113964], [], 0, "NONE"];
_currentVehicle setDir 0.483774;
_currentVehicle setPos [(4068.81)-_centerX+_centerSpawnX, (4001.45)-_centerY+_centerSpawnY, 0.000113964];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_FoodContainer_01_F", [4072.01, 4000.82, -0.0249724], [], 0, "NONE"];
_currentVehicle setDir 359.69;
_currentVehicle setPos [(4072.01)-_centerX+_centerSpawnX, (4000.82)-_centerY+_centerSpawnY, -0.0249729];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4080.17, 4016.05, -0.00113344], [], 0, "NONE"];
_currentVehicle setDir 359.886;
_currentVehicle setPos [(4080.17)-_centerX+_centerSpawnX, (4016.05)-_centerY+_centerSpawnY, -0.000319004];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo_Tower_V1_No1_F", [4127.75, 4017.62, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4127.75)-_centerX+_centerSpawnX, (4017.62)-_centerY+_centerSpawnY, -9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["RHS_Mi8mt_vvs", [4109.67, 4014.93, -0.46878], [], 0, "NONE"];
_currentVehicle setDir 321.142;
_currentVehicle setPos [(4109.67)-_centerX+_centerSpawnX, (4014.93)-_centerY+_centerSpawnY, 0.0179081];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HelipadCircle_F", [4108.42, 4016.36, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4108.42)-_centerX+_centerSpawnX, (4016.36)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo40_military_green_F", [4105.59, 4031.56, 0], [], 0, "NONE"];
_currentVehicle setDir 359.98;
_currentVehicle setPos [(4105.59)-_centerX+_centerSpawnX, (4031.56)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4120.42, 4006.25, 0], [], 0, "NONE"];
_currentVehicle setDir 209.698;
_currentVehicle setPos [(4120.42)-_centerX+_centerSpawnX, (4006.25)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4120.25, 4026.03, 0], [], 0, "NONE"];
_currentVehicle setDir 148.674;
_currentVehicle setPos [(4120.25)-_centerX+_centerSpawnX, (4026.03)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["RHS_Ural_Fuel_VV_01", [4106.4, 4002.01, 0.0363832], [], 0, "NONE"];
_currentVehicle setDir 85.2492;
_currentVehicle setPos [(4106.4)-_centerX+_centerSpawnX, (4002.01)-_centerY+_centerSpawnY, -0.00854683];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4122.82, 4026.26, 0], [], 0, "NONE"];
_currentVehicle setDir 247.793;
_currentVehicle setPos [(4122.82)-_centerX+_centerSpawnX, (4026.26)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4122.59, 4005.65, 0], [], 0, "NONE"];
_currentVehicle setDir 300.312;
_currentVehicle setPos [(4122.59)-_centerX+_centerSpawnX, (4005.65)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_military_green_F", [4108.58, 4028.97, 0], [], 0, "NONE"];
_currentVehicle setDir 0.000162319;
_currentVehicle setPos [(4108.58)-_centerX+_centerSpawnX, (4028.97)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["StorageBladder_02_water_forest_F", [4097.39, 4016.01, 0], [], 0, "NONE"];
_currentVehicle setDir 91.5269;
_currentVehicle setPos [(4097.39)-_centerX+_centerSpawnX, (4016.01)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo10_military_green_F", [4100.49, 4028.7, 1.43051E-06], [], 0, "NONE"];
_currentVehicle setDir 274.173;
_currentVehicle setPos [(4100.49)-_centerX+_centerSpawnX, (4028.7)-_centerY+_centerSpawnY, 1.43051E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_DieselGroundPowerUnit_01_F", [4115.17, 4004.01, -0.00129557], [], 0, "NONE"];
_currentVehicle setDir 212.358;
_currentVehicle setPos [(4115.17)-_centerX+_centerSpawnX, (4004.01)-_centerY+_centerSpawnY, -0.00129509];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Pallet_MilBoxes_F", [4119.43, 4023.06, 0], [], 0, "NONE"];
_currentVehicle setDir 303.678;
_currentVehicle setPos [(4119.43)-_centerX+_centerSpawnX, (4023.06)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Pallet_MilBoxes_F", [4118.56, 4027.22, 0], [], 0, "NONE"];
_currentVehicle setDir 220.996;
_currentVehicle setPos [(4118.56)-_centerX+_centerSpawnX, (4027.22)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_full_F", [4113.17, 4028.75, 0], [], 0, "NONE"];
_currentVehicle setDir 330.534;
_currentVehicle setPos [(4113.17)-_centerX+_centerSpawnX, (4028.75)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_full_F", [4114.95, 4030.3, 0], [], 0, "NONE"];
_currentVehicle setDir 330.534;
_currentVehicle setPos [(4114.95)-_centerX+_centerSpawnX, (4030.3)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_full_F", [4112.79, 4031.39, 0], [], 0, "NONE"];
_currentVehicle setDir 189.068;
_currentVehicle setPos [(4112.79)-_centerX+_centerSpawnX, (4031.39)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_empty_F", [4119.3, 4025.08, 0], [], 0, "NONE"];
_currentVehicle setDir 173.207;
_currentVehicle setPos [(4119.3)-_centerX+_centerSpawnX, (4025.08)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_empty_F", [4102.81, 4028.97, 0], [], 0, "NONE"];
_currentVehicle setDir 173.207;
_currentVehicle setPos [(4102.81)-_centerX+_centerSpawnX, (4028.97)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingTable_F", [4117.46, 4024.7, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 60.2451;
_currentVehicle setPos [(4117.46)-_centerX+_centerSpawnX, (4024.7)-_centerY+_centerSpawnY, 4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PlasticCase_01_large_F", [4117.4, 4028.22, 0], [], 0, "NONE"];
_currentVehicle setDir 18.0066;
_currentVehicle setPos [(4117.4)-_centerX+_centerSpawnX, (4028.22)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingTable_small_F", [4116.67, 4026.37, -9.53674E-07], [], 0, "NONE"];
_currentVehicle setDir 330.439;
_currentVehicle setPos [(4116.67)-_centerX+_centerSpawnX, (4026.37)-_centerY+_centerSpawnY, -9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ChairPlastic_F", [4115.3, 4028.65, 1.71661E-05], [], 0, "NONE"];
_currentVehicle setDir 70.6432;
_currentVehicle setPos [(4115.3)-_centerX+_centerSpawnX, (4028.65)-_centerY+_centerSpawnY, 1.71661E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ChairPlastic_F", [4116.34, 4023.95, 1.71661E-05], [], 0, "NONE"];
_currentVehicle setDir 309.555;
_currentVehicle setPos [(4116.34)-_centerX+_centerSpawnX, (4023.95)-_centerY+_centerSpawnY, 1.71661E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalCase_01_medium_F", [4116.95, 4029.3, -4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 219.464;
_currentVehicle setPos [(4116.95)-_centerX+_centerSpawnX, (4029.3)-_centerY+_centerSpawnY, -4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PCSet_01_case_F", [4115.8, 4026.79, -3.33786E-06], [], 0, "NONE"];
_currentVehicle setDir 328.414;
_currentVehicle setPos [(4115.8)-_centerX+_centerSpawnX, (4026.79)-_centerY+_centerSpawnY, -3.8147E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PCSet_01_screen_F", [4116.13, 4027.13, 3.67165E-05], [], 0, "NONE"];
_currentVehicle setDir 132.309;
_currentVehicle setPos [(4116.13)-_centerX+_centerSpawnX, (4027.13)-_centerY+_centerSpawnY, 3.67165E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Laptop_device_F", [4116.36, 4025.4, -9.53674E-07], [], 0, "NONE"];
_currentVehicle setDir 252.21;
_currentVehicle setPos [(4116.36)-_centerX+_centerSpawnX, (4025.4)-_centerY+_centerSpawnY, -9.53674E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PCSet_01_keyboard_F", [4115.88, 4027.42, 0], [], 0, "NONE"];
_currentVehicle setDir 330.516;
_currentVehicle setPos [(4115.88)-_centerX+_centerSpawnX, (4027.42)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["WaterPump_01_forest_F", [4097.45, 4001.04, 0.000854015], [], 0, "NONE"];
_currentVehicle setDir 66.6667;
_currentVehicle setPos [(4097.45)-_centerX+_centerSpawnX, (4001.04)-_centerY+_centerSpawnY, 0.000853539];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4096.72, 4012.32, 5.72205E-06], [], 0, "NONE"];
_currentVehicle setDir 137.253;
_currentVehicle setPos [(4096.72)-_centerX+_centerSpawnX, (4012.32)-_centerY+_centerSpawnY, 5.24521E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PressureWasher_01_F", [4096.69, 4003.65, 0], [], 0, "NONE"];
_currentVehicle setDir 248.468;
_currentVehicle setPos [(4096.69)-_centerX+_centerSpawnX, (4003.65)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_Tall_F", [4113.24, 4001.02, 0.000112057], [], 0, "NONE"];
_currentVehicle setDir 358.885;
_currentVehicle setPos [(4113.24)-_centerX+_centerSpawnX, (4001.02)-_centerY+_centerSpawnY, 0.000112057];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_F", [4113.5, 4002.12, 8.58307E-06], [], 0, "NONE"];
_currentVehicle setDir 268.091;
_currentVehicle setPos [(4113.5)-_centerX+_centerSpawnX, (4002.12)-_centerY+_centerSpawnY, 8.58307E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4098.16, 4012.31, 6.19888E-06], [], 0, "NONE"];
_currentVehicle setDir 137.243;
_currentVehicle setPos [(4098.16)-_centerX+_centerSpawnX, (4012.31)-_centerY+_centerSpawnY, 5.72205E-06];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4097.27, 4011.22, 1.19209E-05], [], 0, "NONE"];
_currentVehicle setDir 137.236;
_currentVehicle setPos [(4097.27)-_centerX+_centerSpawnX, (4011.22)-_centerY+_centerSpawnY, 1.14441E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Money_F", [4118.18, 4023.51, -4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 0.000462053;
_currentVehicle setPos [(4118.18)-_centerX+_centerSpawnX, (4023.51)-_centerY+_centerSpawnY, -4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Printer_01_F", [4116.93, 4027.27, 4.76837E-07], [], 0, "NONE"];
_currentVehicle setDir 0.0150901;
_currentVehicle setPos [(4116.93)-_centerX+_centerSpawnX, (4027.27)-_centerY+_centerSpawnY, 4.76837E-07];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4111.32, 4024.31, -0.00113344], [], 0, "NONE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [(4111.32)-_centerX+_centerSpawnX, (4024.31)-_centerY+_centerSpawnY, -0.000319004];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4128.96, 4008.91, 0], [], 0, "NONE"];
_currentVehicle setDir 180.486;
_currentVehicle setPos [(4128.96)-_centerX+_centerSpawnX, (4008.91)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4133.94, 4019.8, 0], [], 0, "NONE"];
_currentVehicle setDir 263.759;
_currentVehicle setPos [(4133.94)-_centerX+_centerSpawnX, (4019.8)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4129.05, 4023.38, 0], [], 0, "NONE"];
_currentVehicle setDir 180.486;
_currentVehicle setPos [(4129.05)-_centerX+_centerSpawnX, (4023.38)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4134.14, 4012.26, 0], [], 0, "NONE"];
_currentVehicle setDir 275.409;
_currentVehicle setPos [(4134.14)-_centerX+_centerSpawnX, (4012.26)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["CamoNet_INDP_big_Curator_F", [4052.46, 4038.34, 0], [], 0, "NONE"];
_currentVehicle setDir 270.096;
_currentVehicle setPos [(4052.46)-_centerX+_centerSpawnX, (4038.34)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4052.9, 4050.76, 0], [], 0, "NONE"];
_currentVehicle setDir 89.2687;
_currentVehicle setPos [(4052.9)-_centerX+_centerSpawnX, (4050.76)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["RHS_Ural_Open_VV_01", [4052.64, 4036.79, 0.0639491], [], 0, "NONE"];
_currentVehicle setDir 68.9869;
_currentVehicle setPos [(4052.64)-_centerX+_centerSpawnX, (4036.79)-_centerY+_centerSpawnY, -0.00848484];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall6_F", [4050.97, 4053.41, 0], [], 0, "NONE"];
_currentVehicle setDir 0.728545;
_currentVehicle setPos [(4050.97)-_centerX+_centerSpawnX, (4053.41)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4044.18, 4044.81, 0], [], 0, "NONE"];
_currentVehicle setDir 269.559;
_currentVehicle setPos [(4044.18)-_centerX+_centerSpawnX, (4044.81)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4044.31, 4040.58, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4044.31)-_centerX+_centerSpawnX, (4040.58)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4044.42, 4034.2, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4044.42)-_centerX+_centerSpawnX, (4034.2)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall_corner_F", [4045.34, 4051.65, 0], [], 0, "NONE"];
_currentVehicle setDir 270.604;
_currentVehicle setPos [(4045.34)-_centerX+_centerSpawnX, (4051.65)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_tigr_vv", [4051.2, 4041.84, 0.0340185], [], 0, "NONE"];
_currentVehicle setDir 60.1216;
_currentVehicle setPos [(4051.2)-_centerX+_centerSpawnX, (4041.84)-_centerY+_centerSpawnY, 0.00737286];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Razorwire_F", [4049.66, 4061.3, -2.38419E-06], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4049.66)-_centerX+_centerSpawnX, (4061.3)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4061.93, 4036.09, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4061.93)-_centerX+_centerSpawnX, (4036.09)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4053.11, 4057.86, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 180.716;
_currentVehicle setPos [(4053.11)-_centerX+_centerSpawnX, (4057.86)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalBarrel_F", [4055.67, 4033.03, 5.48363E-05], [], 0, "NONE"];
_currentVehicle setDir 359.814;
_currentVehicle setPos [(4055.67)-_centerX+_centerSpawnX, (4033.03)-_centerY+_centerSpawnY, 5.48363E-05];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4049.06, 4037.64, -0.00113106], [], 0, "NONE"];
_currentVehicle setDir 359.857;
_currentVehicle setPos [(4049.06)-_centerX+_centerSpawnX, (4037.64)-_centerY+_centerSpawnY, -0.00031662];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo_Patrol_V1_F", [4074.72, 4048.48, 0], [], 0, "NONE"];
_currentVehicle setDir 218.558;
_currentVehicle setPos [(4074.72)-_centerX+_centerSpawnX, (4048.48)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4066.68, 4050.38, 0], [], 0, "NONE"];
_currentVehicle setDir 89.2687;
_currentVehicle setPos [(4066.68)-_centerX+_centerSpawnX, (4050.38)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4081.33, 4034.22, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4081.33)-_centerX+_centerSpawnX, (4034.22)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4079.19, 4050.14, 0], [], 0, "NONE"];
_currentVehicle setDir 58.0292;
_currentVehicle setPos [(4079.19)-_centerX+_centerSpawnX, (4050.14)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4092.21, 4031.94, 0], [], 0, "NONE"];
_currentVehicle setDir 318.036;
_currentVehicle setPos [(4092.21)-_centerX+_centerSpawnX, (4031.94)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4081.3, 4043.01, 0], [], 0, "NONE"];
_currentVehicle setDir 270.929;
_currentVehicle setPos [(4081.3)-_centerX+_centerSpawnX, (4043.01)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4073.46, 4053.58, 0], [], 0, "NONE"];
_currentVehicle setDir 1.06431;
_currentVehicle setPos [(4073.46)-_centerX+_centerSpawnX, (4053.58)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrierWall4_F", [4066.47, 4052.47, 0], [], 0, "NONE"];
_currentVehicle setDir 358.184;
_currentVehicle setPos [(4066.47)-_centerX+_centerSpawnX, (4052.47)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_3_F", [4075.9, 4033.98, 0], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4075.9)-_centerX+_centerSpawnX, (4033.98)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Razorwire_F", [4067.51, 4061.08, -2.38419E-06], [], 0, "NONE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4067.51)-_centerX+_centerSpawnX, (4061.08)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4066.51, 4045.9, 0], [], 0, "NONE"];
_currentVehicle setDir 269.956;
_currentVehicle setPos [(4066.51)-_centerX+_centerSpawnX, (4045.9)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4073.6, 4038.06, 0], [], 0, "NONE"];
_currentVehicle setDir 165.451;
_currentVehicle setPos [(4073.6)-_centerX+_centerSpawnX, (4038.06)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4066.76, 4032.64, 0], [], 0, "NONE"];
_currentVehicle setDir 298.962;
_currentVehicle setPos [(4066.76)-_centerX+_centerSpawnX, (4032.64)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4079.06, 4038.15, 0], [], 0, "NONE"];
_currentVehicle setDir 180.796;
_currentVehicle setPos [(4079.06)-_centerX+_centerSpawnX, (4038.15)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4072.09, 4033.31, 0], [], 0, "NONE"];
_currentVehicle setDir 270.883;
_currentVehicle setPos [(4072.09)-_centerX+_centerSpawnX, (4033.31)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ToiletBox_F", [4079, 4042.73, -0.0249925], [], 0, "NONE"];
_currentVehicle setDir 80.3566;
_currentVehicle setPos [(4079)-_centerX+_centerSpawnX, (4042.73)-_centerY+_centerSpawnY, -0.0249925];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium_F", [4065.4, 4038.69, 0], [], 0, "NONE"];
_currentVehicle setDir 316.943;
_currentVehicle setPos [(4065.4)-_centerX+_centerSpawnX, (4038.69)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4065.63, 4057.9, -0.00130081], [], 0, "NONE"];
_currentVehicle setDir 180.716;
_currentVehicle setPos [(4065.63)-_centerX+_centerSpawnX, (4057.9)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4117.08, 4032.42, 0], [], 0, "NONE"];
_currentVehicle setDir 210.995;
_currentVehicle setPos [(4117.08)-_centerX+_centerSpawnX, (4032.42)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4108.56, 4034.51, 0], [], 0, "NONE"];
_currentVehicle setDir 180.486;
_currentVehicle setPos [(4108.56)-_centerX+_centerSpawnX, (4034.51)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_Big_F", [4099.98, 4034.44, 0], [], 0, "NONE"];
_currentVehicle setDir 180.486;
_currentVehicle setPos [(4099.98)-_centerX+_centerSpawnX, (4034.44)-_centerY+_centerSpawnY, 0];
VehiclesArray = VehiclesArray + [_currentVehicle];

_maxIterations = 50;
_deepLevel = 15;
_perIterIncrease = _deepLevel / _maxIterations;

_initPoses = []; // prefab's objects positions

{
    _initPoses = _initPoses + [getPos _x];
    _veh = TypeOf (_x);
    _vehSimStatus = getText (configfile >> "CfgVehicles" >> _veh >> "simulation");
    //player sideChat str _vehSimStatus;
    if(_vehSimStatus == "house") then
    {
      _x enableSimulation true;
      _x allowDamage true;
    };
} forEach VehiclesArray;

_safePlace_posX = (getpos (VehiclesArray select 0)) select 0;
_safePlace_posY = (getpos (VehiclesArray select 0)) select 1;

for "_i" from 1 to (count _unitsArray) do
{
    _tmp = (_unitsArray select _i);

    player sideChat str count (crew _tmp);

    if((crew _tmp select 0) == _tmp) then
    {
        _tmp setPos [_safePlace_posX + 5, _safePlace_posY + 100 + _i*2, (getpos _tmp) select 2];
    }
    else
    {
        _tmp setPos [_safePlace_posX, _safePlace_posY + 100 + _i*6, (getpos _tmp) select 2];
    };

};

//опускаем вниз
{
    _x enableSimulation false;
    _x allowDamage false;
    _x setDamage 0;
	_x setPos [(getPos _x) select 0, (getPos _x) select 1, ((getPos _x) select 2) - _deepLevel];
} forEach VehiclesArray;


player sideChat str count _unitsArray;
{
    _x enableSimulation true;
    _x allowDamage true;
} forEach _unitsArray;


for "_i" from 1 to _maxIterations do
{
	{
        _tempPos = (_initPoses select _forEachIndex);
        _x setPos [_tempPos select 0, _tempPos select 1, ((getPos _x) select 2) + _perIterIncrease];
	} forEach VehiclesArray;
	sleep 0.01;
};

{
    _x enableSimulation true;
    _x allowDamage true;
} forEach VehiclesArray;

/*
{      _x enableSimulation false;      _x allowDamage false;  } forEach thisList;
*/
};
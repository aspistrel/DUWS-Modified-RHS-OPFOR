//////////////////////
// -- ADD THIS -- 1 //
//////////////////////
_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;
/////////////////
// -- END -- 1 //
/////////////////

_vehicle_0 = objNull;
if (true) then
{
  _this = createVehicle ["Land_MultiMeter_F", [4005.91, 4009.11, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setPos [4005.91, 4009.11, 0];
};
///////////////////////
// -- ADD THIS --  2 //
///////////////////////
_centerObj = getpos _vehicle_0; 
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _vehicle_0;
/////////////////
// -- END -- 2 //
/////////////////

// [1818.382, 5624.3564, -9.5367432e-007]
// [1801.28, 5801.42, -9.53674E-07]
_vehicle_1 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3960.72, 4000.64, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir 20.9354;
    _this setPos [(3960.72)-_centerX+_centerSpawnX, (4000.64)-_centerY+_centerSpawnY, 0];
};
_vehicle_2 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3986.37, 3997.83, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 0;
    _this setPos [(3986.37)-_centerX+_centerSpawnX, (3997.83)-_centerY+_centerSpawnY, 0];
};
_vehicle_3 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3976.14, 3996.84, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 190.999;
    _this setPos [(3976.14)-_centerX+_centerSpawnX, (3996.84)-_centerY+_centerSpawnY, 0];
};
_vehicle_4 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3970.51, 3997.85, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 190.999;
    _this setPos [(3970.51)-_centerX+_centerSpawnX, (3997.85)-_centerY+_centerSpawnY, 0];
};
_vehicle_5 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3996.73, 3993.05, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 10;
    _this setPos [(3996.73)-_centerX+_centerSpawnX, (3993.05)-_centerY+_centerSpawnY, 0];
};
_vehicle_6 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3979.58, 3991.07, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 337.913;
    _this setPos [(3979.58)-_centerX+_centerSpawnX, (3991.07)-_centerY+_centerSpawnY, 0];
};
_vehicle_7 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3990.76, 3989.79, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 35.1002;
    _this setPos [(3990.76)-_centerX+_centerSpawnX, (3989.79)-_centerY+_centerSpawnY, 0];
};
_vehicle_8 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3993.61, 3989.98, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 315.57;
    _this setPos [(3993.61)-_centerX+_centerSpawnX, (3989.98)-_centerY+_centerSpawnY, 0];
};
_vehicle_9 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3976.87, 3991.98, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 57.4433;
    _this setPos [(3976.87)-_centerX+_centerSpawnX, (3991.98)-_centerY+_centerSpawnY, 0];
};
_vehicle_10 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3991.79, 3993.96, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 189.21;
    _this setPos [(3991.79)-_centerX+_centerSpawnX, (3993.96)-_centerY+_centerSpawnY, 0];
};
_vehicle_11 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3978.23, 3996.55, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 9.21535;
    _this setPos [(3978.23)-_centerX+_centerSpawnX, (3996.55)-_centerY+_centerSpawnY, 0];
};
_vehicle_12 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3981.13, 3996.11, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 9.21535;
    _this setPos [(3981.13)-_centerX+_centerSpawnX, (3996.11)-_centerY+_centerSpawnY, 0];
};
_vehicle_13 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3994.67, 3993.54, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 189.21;
    _this setPos [(3994.67)-_centerX+_centerSpawnX, (3993.54)-_centerY+_centerSpawnY, 0];
};
_vehicle_14 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [3983.17, 3995.74, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 102.85;
    _this setPos [(3983.17)-_centerX+_centerSpawnX, (3995.74)-_centerY+_centerSpawnY, 0];
};
_vehicle_15 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [3989.51, 3994.45, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 194.521;
    _this setPos [(3989.51)-_centerX+_centerSpawnX, (3994.45)-_centerY+_centerSpawnY, 0];
};
_vehicle_16 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [4028.61, 3992.72, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 315.499;
    _this setPos [(4028.61)-_centerX+_centerSpawnX, (3992.72)-_centerY+_centerSpawnY, 0];
};
_vehicle_17 = objNull;
if (true) then
{
    _this = createVehicle ["Land_IronPipes_F", [4010.63, 3992.71, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 9.40915;
    _this setPos [(4010.63)-_centerX+_centerSpawnX, (3992.71)-_centerY+_centerSpawnY, 0];
};
_vehicle_18 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4002.19, 3992.05, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 10;
    _this setPos [(4002.19)-_centerX+_centerSpawnX, (3992.05)-_centerY+_centerSpawnY, 0];
};
_vehicle_19 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4032.83, 3990.26, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setDir 143.193;
    _this setPos [(4032.83)-_centerX+_centerSpawnX, (3990.26)-_centerY+_centerSpawnY, 0];
};
_vehicle_20 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4013.02, 3990.15, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 10;
    _this setPos [(4013.02)-_centerX+_centerSpawnX, (3990.15)-_centerY+_centerSpawnY, 0];
};
_vehicle_21 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4023.93, 3988.13, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir 10;
    _this setPos [(4023.93)-_centerX+_centerSpawnX, (3988.13)-_centerY+_centerSpawnY, 0];
};
_vehicle_22 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4007.57, 3991.15, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_22 = _this;
    _this setDir 10;
    _this setPos [(4007.57)-_centerX+_centerSpawnX, (3991.15)-_centerY+_centerSpawnY, 0];
};
_vehicle_23 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4018.45, 3989.18, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 10;
    _this setPos [(4018.45)-_centerX+_centerSpawnX, (3989.18)-_centerY+_centerSpawnY, 0];
};
_vehicle_24 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_MilBoxes_F", [4016.59, 3993.27, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 206.249;
    _this setPos [(4016.59)-_centerX+_centerSpawnX, (3993.27)-_centerY+_centerSpawnY, 0];
};
_vehicle_25 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_MilBoxes_F", [4015.46, 3992.06, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 54.1024;
    _this setPos [(4015.46)-_centerX+_centerSpawnX, (3992.06)-_centerY+_centerSpawnY, 0];
};
_vehicle_26 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_MilBoxes_F", [4017.91, 3991.58, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 0;
    _this setPos [(4017.91)-_centerX+_centerSpawnX, (3991.58)-_centerY+_centerSpawnY, 0];
};
_vehicle_27 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4020.86, 3991.41, -0.0011344], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 0.00351295;
    _this setPos [(4020.86)-_centerX+_centerSpawnX, (3991.41)-_centerY+_centerSpawnY, -0.000319958];
};
_vehicle_28 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_vertical_F", [4018.22, 3990.53, -0.0699606], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 8.94347;
    _this setPos [(4018.22)-_centerX+_centerSpawnX, (3990.53)-_centerY+_centerSpawnY, 0.0278211];
};
_vehicle_29 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Box_AmmoOld_F", [4015.02, 3993.47, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 38.2161;
    _this setPos [(4015.02)-_centerX+_centerSpawnX, (3993.47)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_30 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4034.87, 3996.12, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_30 = _this;
    _this setDir 287.5;
    _this setPos [(4034.87)-_centerX+_centerSpawnX, (3996.12)-_centerY+_centerSpawnY, 0];
};
_vehicle_31 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4033.22, 3990.79, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_31 = _this;
    _this setDir 287.5;
    _this setPos [(4033.22)-_centerX+_centerSpawnX, (3990.79)-_centerY+_centerSpawnY, 0];
};
_vehicle_32 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_big_Curator_F", [3967.91, 4006.42, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_32 = _this;
    _this setDir 277.858;
    _this setPos [(3967.91)-_centerX+_centerSpawnX, (4006.42)-_centerY+_centerSpawnY, 0];
};
_vehicle_33 = objNull;
if (true) then
{
    _this = createVehicle ["RHS_Ural_Open_MSV_01", [3967.66, 4006.5, 0.0639486], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 105.025;
    _this setPos [(3967.66)-_centerX+_centerSpawnX, (4006.5)-_centerY+_centerSpawnY, -0.00848532];
};
_vehicle_34 = objNull;
if (true) then
{
    _this = createVehicle ["RHS_Ural_Fuel_MSV_01", [3966.41, 4002.93, 0.0363855], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 102.505;
    _this setPos [(3966.41)-_centerX+_centerSpawnX, (4002.93)-_centerY+_centerSpawnY, -0.00878239];
};
_vehicle_35 = objNull;
if (true) then
{
    _this = createVehicle ["RHS_UAZ_MSV_01", [3967.93, 4010.29, 0.00992441], [], 0, "CAN_COLLIDE"];
    _vehicle_35 = _this;
    _this setDir 104.619;
    _this setPos [(3967.93)-_centerX+_centerSpawnX, (4010.29)-_centerY+_centerSpawnY, 0.00326204];
};
_vehicle_36 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3963.33, 4012.86, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir 281.564;
    _this setPos [(3963.33)-_centerX+_centerSpawnX, (4012.86)-_centerY+_centerSpawnY, 0];
};
_vehicle_37 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3962.25, 4007.53, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir 281.564;
    _this setPos [(3962.25)-_centerX+_centerSpawnX, (4007.53)-_centerY+_centerSpawnY, 0];
};
_vehicle_38 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3961.19, 4002.13, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_38 = _this;
    _this setDir 281.564;
    _this setPos [(3961.19)-_centerX+_centerSpawnX, (4002.13)-_centerY+_centerSpawnY, 0];
};
_vehicle_39 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3965.51, 4023.62, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_39 = _this;
    _this setDir 281.564;
    _this setPos [(3965.51)-_centerX+_centerSpawnX, (4023.62)-_centerY+_centerSpawnY, 0];
};
_vehicle_40 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3964.42, 4018.25, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 281.564;
    _this setPos [(3964.42)-_centerX+_centerSpawnX, (4018.25)-_centerY+_centerSpawnY, 0];
};
_vehicle_41 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_02_F", [3964.45, 4010.91, 0.000234604], [], 0, "CAN_COLLIDE"];
    _vehicle_41 = _this;
    _this setDir 359.819;
    _this setPos [(3964.45)-_centerX+_centerSpawnX, (4010.91)-_centerY+_centerSpawnY, 0.000236511];
};
_vehicle_42 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_02_F", [3964.37, 4010.42, 0.000237942], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir 359.793;
    _this setPos [(3964.37)-_centerX+_centerSpawnX, (4010.42)-_centerY+_centerSpawnY, 0.000239849];
};
_vehicle_43 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tyre_F", [3967.25, 4013.64, -0.0728278], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 354.059;
    _this setPos [(3967.25)-_centerX+_centerSpawnX, (4013.64)-_centerY+_centerSpawnY, 0.0852122];
};
_vehicle_44 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tyre_F", [3967.26, 4013.61, -0.00432062], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setDir 356.597;
    _this setPos [(3967.26)-_centerX+_centerSpawnX, (4013.61)-_centerY+_centerSpawnY, -0.00431013];
};
_vehicle_45 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tyre_F", [3967.32, 4013.26, 0.139033], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 125.933;
    _this setPos [(3967.32)-_centerX+_centerSpawnX, (4013.26)-_centerY+_centerSpawnY, 0.149122];
};
_vehicle_46 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_01_khaki_F", [3964.75, 4011.82, 2.76566E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 359.822;
    _this setPos [(3964.75)-_centerX+_centerSpawnX, (4011.82)-_centerY+_centerSpawnY, 2.76566E-05];
};
_vehicle_47 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_01_khaki_F", [3964.72, 4011.44, 2.47955E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_47 = _this;
    _this setDir 359.847;
    _this setPos [(3964.72)-_centerX+_centerSpawnX, (4011.44)-_centerY+_centerSpawnY, 2.47955E-05];
};
_vehicle_48 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CarBattery_01_F", [3967.91, 4014.1, 6.67572E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_48 = _this;
    _this setDir 220.369;
    _this setPos [(3967.91)-_centerX+_centerSpawnX, (4014.1)-_centerY+_centerSpawnY, 6.19888E-06];
};
_vehicle_49 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Communication_F", [3995.68, 4018.55, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 0;
    _this setPos [(3995.68)-_centerX+_centerSpawnX, (4018.55)-_centerY+_centerSpawnY, 0];
};
_vehicle_50 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [3997.23, 4029.5, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 168.223;
    _this setPos [(3997.23)-_centerX+_centerSpawnX, (4029.5)-_centerY+_centerSpawnY, 0];
};
_vehicle_51 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [3990.06, 4007.7, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 14.3475;
    _this setPos [(3990.06)-_centerX+_centerSpawnX, (4007.7)-_centerY+_centerSpawnY, 0];
};
_vehicle_52 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_House_V1_F", [3970.09, 4020.6, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 279.314;
    _this setPos [(3970.09)-_centerX+_centerSpawnX, (4020.6)-_centerY+_centerSpawnY, 0];
};
_vehicle_53 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_House_V1_F", [3976.45, 4029.57, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir 327.71;
    _this setPos [(3976.45)-_centerX+_centerSpawnX, (4029.57)-_centerY+_centerSpawnY, 0];
};
_vehicle_54 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3980.46, 4000.27, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_54 = _this;
    _this setDir 0;
    _this setPos [(3980.46)-_centerX+_centerSpawnX, (4000.27)-_centerY+_centerSpawnY, 0];
};
_vehicle_55 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3995.7, 4018.54, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_55 = _this;
    _this setDir 0;
    _this setPos [(3995.7)-_centerX+_centerSpawnX, (4018.54)-_centerY+_centerSpawnY, 0];
};
_vehicle_56 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3968.64, 4006.34, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir 0;
    _this setPos [(3968.64)-_centerX+_centerSpawnX, (4006.34)-_centerY+_centerSpawnY, 0];
};
_vehicle_57 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3975.4, 4017.67, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_57 = _this;
    _this setDir 0;
    _this setPos [(3975.4)-_centerX+_centerSpawnX, (4017.67)-_centerY+_centerSpawnY, 0];
};
_vehicle_58 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3985.22, 4017.94, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_58 = _this;
    _this setDir 0;
    _this setPos [(3985.22)-_centerX+_centerSpawnX, (4017.94)-_centerY+_centerSpawnY, 0];
};
_vehicle_59 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3999.03, 4000.66, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 0;
    _this setPos [(3999.03)-_centerX+_centerSpawnX, (4000.66)-_centerY+_centerSpawnY, 0];
};
_vehicle_60 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3982.46, 4027.27, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_60 = _this;
    _this setDir 0;
    _this setPos [(3982.46)-_centerX+_centerSpawnX, (4027.27)-_centerY+_centerSpawnY, 0];
};
_vehicle_61 = objNull;
if (true) then
{
    _this = createVehicle ["Land_LampHalogen_F", [3999.79, 4031.68, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_61 = _this;
    _this setDir 70.6886;
    _this setPos [(3999.79)-_centerX+_centerSpawnX, (4031.68)-_centerY+_centerSpawnY, 0];
};
_vehicle_62 = objNull;
if (true) then
{
    _this = createVehicle ["Land_LampHalogen_F", [3992.53, 4005.4, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_62 = _this;
    _this setDir 286.509;
    _this setPos [(3992.53)-_centerX+_centerSpawnX, (4005.4)-_centerY+_centerSpawnY, 0];
};
_vehicle_63 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3980.41, 4009.37, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_63 = _this;
    _this setDir 44.2134;
    _this setPos [(3980.41)-_centerX+_centerSpawnX, (4009.37)-_centerY+_centerSpawnY, 0];
};
_vehicle_64 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3967.11, 4029.02, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 328.21;
    _this setPos [(3967.11)-_centerX+_centerSpawnX, (4029.02)-_centerY+_centerSpawnY, 0];
};
_vehicle_65 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3989.72, 4004.43, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_65 = _this;
    _this setDir 11.6495;
    _this setPos [(3989.72)-_centerX+_centerSpawnX, (4004.43)-_centerY+_centerSpawnY, 0];
};
_vehicle_66 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3984.29, 4005.63, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_66 = _this;
    _this setDir 11.6495;
    _this setPos [(3984.29)-_centerX+_centerSpawnX, (4005.63)-_centerY+_centerSpawnY, 0];
};
_vehicle_67 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3988.47, 4027.95, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_67 = _this;
    _this setDir 308.141;
    _this setPos [(3988.47)-_centerX+_centerSpawnX, (4027.95)-_centerY+_centerSpawnY, 0];
};
_vehicle_68 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3999.05, 4005.68, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_68 = _this;
    _this setDir 153.004;
    _this setPos [(3999.05)-_centerX+_centerSpawnX, (4005.68)-_centerY+_centerSpawnY, 0];
};
_vehicle_69 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_square5_F", [3969.82, 4003.99, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_69 = _this;
    _this setDir 0;
    _this setPos [(3969.82)-_centerX+_centerSpawnX, (4003.99)-_centerY+_centerSpawnY, 0];
};
_vehicle_70 = objNull;
if (true) then
{
    _this = createVehicle ["Land_TablePlastic_01_F", [3970.61, 4012.69, 1.90735E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_70 = _this;
    _this setDir 173.117;
    _this setPos [(3970.61)-_centerX+_centerSpawnX, (4012.69)-_centerY+_centerSpawnY, 1.90735E-06];
};
_vehicle_71 = objNull;
if (true) then
{
    _this = createVehicle ["Item_ItemRadio", [3970.24, 4012.85, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_71 = _this;
    _this setDir 0;
    _this setPos [(3970.24)-_centerX+_centerSpawnX, (4012.85)-_centerY+_centerSpawnY, 0.887085];
};
_vehicle_72 = objNull;
if (true) then
{
    _this = createVehicle ["Oil_Spill_F", [3968.59, 4010.64, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_72 = _this;
    _this setDir 0;
    _this setPos [(3968.59)-_centerX+_centerSpawnX, (4010.64)-_centerY+_centerSpawnY, 0];
};
_vehicle_73 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3982.76, 4009.3, 9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_73 = _this;
    _this setDir 310.071;
    _this setPos [(3982.76)-_centerX+_centerSpawnX, (4009.3)-_centerY+_centerSpawnY, 9.53674E-07];
};
_vehicle_74 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Portable_generator_F", [3970.81, 4016.71, -0.000816822], [], 0, "CAN_COLLIDE"];
    _vehicle_74 = _this;
    _this setDir 33.7602;
    _this setPos [(3970.81)-_centerX+_centerSpawnX, (4016.71)-_centerY+_centerSpawnY, -0.000813961];
};
_vehicle_75 = objNull;
if (true) then
{
    _this = createVehicle ["FirePlace_burning_F", [3990.97, 4018.99, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_75 = _this;
    _this setDir 0;
    _this setPos [(3990.97)-_centerX+_centerSpawnX, (4018.99)-_centerY+_centerSpawnY, 9.53674E-07];
};
_vehicle_76 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3994.32, 4017.61, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_76 = _this;
    _this setDir 78.2664;
    _this setPos [(3994.32)-_centerX+_centerSpawnX, (4017.61)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_77 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3994.17, 4018.21, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_77 = _this;
    _this setDir 102.105;
    _this setPos [(3994.17)-_centerX+_centerSpawnX, (4018.21)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_78 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3994.29, 4018.86, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_78 = _this;
    _this setDir 91.8076;
    _this setPos [(3994.29)-_centerX+_centerSpawnX, (4018.86)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_79 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3994.22, 4019.7, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_79 = _this;
    _this setDir 128.525;
    _this setPos [(3994.22)-_centerX+_centerSpawnX, (4019.7)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_80 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelTrash_F", [3968.74, 4013.32, 5.8651E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_80 = _this;
    _this setDir 359.116;
    _this setPos [(3968.74)-_centerX+_centerSpawnX, (4013.32)-_centerY+_centerSpawnY, 5.8651E-05];
};
_vehicle_81 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bucket_F", [3970.46, 4012.15, 3.91006E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_81 = _this;
    _this setDir 0.0883941;
    _this setPos [(3970.46)-_centerX+_centerSpawnX, (4012.15)-_centerY+_centerSpawnY, 3.91006E-05];
};
_vehicle_82 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CarBattery_02_F", [3970.97, 4012.6, -0.0544777], [], 0, "CAN_COLLIDE"];
    _vehicle_82 = _this;
    _this setDir 144.58;
    _this setPos [(3970.97)-_centerX+_centerSpawnX, (4012.6)-_centerY+_centerSpawnY, 0.832599];
};
_vehicle_83 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [3996.82, 4016.32, -0.00113392], [], 0, "CAN_COLLIDE"];
    _vehicle_83 = _this;
    _this setDir 359.881;
    _this setPos [(3996.82)-_centerX+_centerSpawnX, (4016.32)-_centerY+_centerSpawnY, -0.000319481];
};
_vehicle_84 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [3970.79, 4013.97, -0.00113344], [], 0, "CAN_COLLIDE"];
    _vehicle_84 = _this;
    _this setDir 359.924;
    _this setPos [(3970.79)-_centerX+_centerSpawnX, (4013.97)-_centerY+_centerSpawnY, -0.000319004];
};
_vehicle_85 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_HQ_V1_F", [4024.54, 4026.32, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_85 = _this;
    _this setDir 16.1735;
    _this setPos [(4024.54)-_centerX+_centerSpawnX, (4026.32)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_86 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_open_Curator_F", [4017.67, 4014.15, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_86 = _this;
    _this setDir 101.583;
    _this setPos [(4017.67)-_centerX+_centerSpawnX, (4014.15)-_centerY+_centerSpawnY, 0];
};
_vehicle_87 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_Curator_F", [4026.11, 4011.2, -0.895], [], 0, "CAN_COLLIDE"];
    _vehicle_87 = _this;
    _this setDir 105.474;
    _this setPos [(4026.11)-_centerX+_centerSpawnX, (4011.2)-_centerY+_centerSpawnY, 0];
};
_vehicle_88 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_Curator_F", [4017.62, 4004.99, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_88 = _this;
    _this setDir 182.866;
    _this setPos [(4017.62)-_centerX+_centerSpawnX, (4004.99)-_centerY+_centerSpawnY, 0];
};
_vehicle_89 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4016.03, 4006.23, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_89 = _this;
    _this setDir 0;
    _this setPos [(4016.03)-_centerX+_centerSpawnX, (4006.23)-_centerY+_centerSpawnY, 0];
};
_vehicle_90 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4018.48, 4014.7, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_90 = _this;
    _this setDir 0;
    _this setPos [(4018.48)-_centerX+_centerSpawnX, (4014.7)-_centerY+_centerSpawnY, 0];
};
_vehicle_91 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4024.41, 4012.49, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_91 = _this;
    _this setDir 0;
    _this setPos [(4024.41)-_centerX+_centerSpawnX, (4012.49)-_centerY+_centerSpawnY, 0];
};
_vehicle_92 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4005.91, 4009.11, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_92 = _this;
    _this setDir 0;
    _this setPos [(4005.91)-_centerX+_centerSpawnX, (4009.11)-_centerY+_centerSpawnY, 0];
};
_vehicle_93 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4007.98, 4022.58, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_93 = _this;
    _this setDir 0;
    _this setPos [(4007.98)-_centerX+_centerSpawnX, (4022.58)-_centerY+_centerSpawnY, 0];
};
_vehicle_94 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4017.36, 4010.84, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_94 = _this;
    _this setDir 342.353;
    _this setPos [(4017.36)-_centerX+_centerSpawnX, (4010.84)-_centerY+_centerSpawnY, 0];
};
_vehicle_95 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Loudspeakers_F", [4030.48, 4020.51, 0.0174255], [], 0, "CAN_COLLIDE"];
    _vehicle_95 = _this;
    _this setDir 0;
    _this setPos [(4030.48)-_centerX+_centerSpawnX, (4020.51)-_centerY+_centerSpawnY, 1.35834];
};
_vehicle_96 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_Flag_Russia_F", [4017.7, 4022.83, 0.000393867], [], 0, "CAN_COLLIDE"];
    _vehicle_96 = _this;
    _this setDir 0;
    _this setPos [(4017.7)-_centerX+_centerSpawnX, (4022.83)-_centerY+_centerSpawnY, 1.42494];
};
_vehicle_97 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4024.17, 4019.22, -7.62939E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_97 = _this;
    _this setDir 16.1707;
    _this setPos [(4024.17)-_centerX+_centerSpawnX, (4019.22)-_centerY+_centerSpawnY, -7.62939E-06];
};
_vehicle_98 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4022.24, 4003.45, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_98 = _this;
    _this setDir 316.612;
    _this setPos [(4022.24)-_centerX+_centerSpawnX, (4003.45)-_centerY+_centerSpawnY, 0];
};
_vehicle_99 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4032.18, 4031.09, -5.72205E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_99 = _this;
    _this setDir 196.556;
    _this setPos [(4032.18)-_centerX+_centerSpawnX, (4031.09)-_centerY+_centerSpawnY, -5.72205E-06];
};
_vehicle_100 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4017.93, 4019.74, 8.58307E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_100 = _this;
    _this setDir 17.7724;
    _this setPos [(4017.93)-_centerX+_centerSpawnX, (4019.74)-_centerY+_centerSpawnY, 8.58307E-06];
};
_vehicle_101 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4025.95, 4007.16, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_101 = _this;
    _this setDir 283.23;
    _this setPos [(4025.95)-_centerX+_centerSpawnX, (4007.16)-_centerY+_centerSpawnY, 0];
};
_vehicle_102 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4027.17, 4012.5, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_102 = _this;
    _this setDir 283.23;
    _this setPos [(4027.17)-_centerX+_centerSpawnX, (4012.5)-_centerY+_centerSpawnY, 0];
};
_vehicle_103 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [4022.08, 4006.7, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_103 = _this;
    _this setDir 20.8911;
    _this setPos [(4022.08)-_centerX+_centerSpawnX, (4006.7)-_centerY+_centerSpawnY, 0];
};
_vehicle_104 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [4025.23, 4005.13, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_104 = _this;
    _this setDir 38.8894;
    _this setPos [(4025.23)-_centerX+_centerSpawnX, (4005.13)-_centerY+_centerSpawnY, 0];
};
_vehicle_105 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [4028.54, 4015.47, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_105 = _this;
    _this setDir 38.8894;
    _this setPos [(4028.54)-_centerX+_centerSpawnX, (4015.47)-_centerY+_centerSpawnY, 0];
};
_vehicle_106 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [4018.56, 4009.47, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_106 = _this;
    _this setDir 274.435;
    _this setPos [(4018.56)-_centerX+_centerSpawnX, (4009.47)-_centerY+_centerSpawnY, 0];
};
_vehicle_107 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [4016.71, 4016.56, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_107 = _this;
    _this setDir 274.435;
    _this setPos [(4016.71)-_centerX+_centerSpawnX, (4016.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_108 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [4030.8, 4019.96, 5.24521E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_108 = _this;
    _this setDir 106.884;
    _this setPos [(4030.8)-_centerX+_centerSpawnX, (4019.96)-_centerY+_centerSpawnY, 5.24521E-06];
};
_vehicle_109 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [4019.93, 4031.93, 5.72205E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_109 = _this;
    _this setDir 106.229;
    _this setPos [(4019.93)-_centerX+_centerSpawnX, (4031.93)-_centerY+_centerSpawnY, 5.72205E-06];
};
_vehicle_110 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [4017.42, 4023.41, 1.90735E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_110 = _this;
    _this setDir 106.229;
    _this setPos [(4017.42)-_centerX+_centerSpawnX, (4023.41)-_centerY+_centerSpawnY, 1.90735E-06];
};
_vehicle_111 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [4025.94, 4016.44, 7.15256E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_111 = _this;
    _this setDir 83.6468;
    _this setPos [(4025.94)-_centerX+_centerSpawnX, (4016.44)-_centerY+_centerSpawnY, 7.15256E-06];
};
_vehicle_112 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [4025.71, 4015.06, -1.90735E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_112 = _this;
    _this setDir 98.9172;
    _this setPos [(4025.71)-_centerX+_centerSpawnX, (4015.06)-_centerY+_centerSpawnY, -1.90735E-05];
};
_vehicle_113 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [4012.05, 4006.85, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_113 = _this;
    _this setDir 71.8837;
    _this setPos [(4012.05)-_centerX+_centerSpawnX, (4006.85)-_centerY+_centerSpawnY, 0.00130081];
};
_vehicle_114 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_MilBoxes_F", [4025.37, 4011.88, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_114 = _this;
    _this setDir 280.748;
    _this setPos [(4025.37)-_centerX+_centerSpawnX, (4011.88)-_centerY+_centerSpawnY, 0];
};
_vehicle_115 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [4012.41, 4009.58, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_115 = _this;
    _this setDir 91.9481;
    _this setPos [(4012.41)-_centerX+_centerSpawnX, (4009.58)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_116 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [4014, 4004.84, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_116 = _this;
    _this setDir 221.338;
    _this setPos [(4014)-_centerX+_centerSpawnX, (4004.84)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_117 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [4019.65, 4003.24, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_117 = _this;
    _this setDir 179.266;
    _this setPos [(4019.65)-_centerX+_centerSpawnX, (4003.24)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_118 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [4016.64, 4003.55, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_118 = _this;
    _this setDir 196.364;
    _this setPos [(4016.64)-_centerX+_centerSpawnX, (4003.55)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_119 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_1_F", [4031.83, 4023.7, 2.86102E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_119 = _this;
    _this setDir 105.162;
    _this setPos [(4031.83)-_centerX+_centerSpawnX, (4023.7)-_centerY+_centerSpawnY, 2.86102E-06];
};
_vehicle_120 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_open_full_F", [4020.71, 4017.15, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_120 = _this;
    _this setDir 112.908;
    _this setPos [(4020.71)-_centerX+_centerSpawnX, (4017.15)-_centerY+_centerSpawnY, 0];
};
_vehicle_121 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_open_full_F", [4019.01, 4017.7, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_121 = _this;
    _this setDir 230.809;
    _this setPos [(4019.01)-_centerX+_centerSpawnX, (4017.7)-_centerY+_centerSpawnY, 0];
};
_vehicle_122 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MapBoard_F", [4014.9, 4007.5, -0.002213], [], 0, "CAN_COLLIDE"];
    _vehicle_122 = _this;
    _this setDir 197.936;
    _this setPos [(4014.9)-_centerX+_centerSpawnX, (4007.5)-_centerY+_centerSpawnY, -0.00219727];
};
_vehicle_123 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_closed_F", [4017.25, 4018.02, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_123 = _this;
    _this setDir 0;
    _this setPos [(4017.25)-_centerX+_centerSpawnX, (4018.02)-_centerY+_centerSpawnY, 0];
};
_vehicle_124 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sink_F", [4015.55, 4021.8, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_124 = _this;
    _this setDir 277.882;
    _this setPos [(4015.55)-_centerX+_centerSpawnX, (4021.8)-_centerY+_centerSpawnY, -1.43051E-06];
};
_vehicle_125 = objNull;
if (true) then
{
    _this = createVehicle ["Item_MineDetector", [4017.54, 4017.61, -0.00208473], [], 0, "CAN_COLLIDE"];
    _vehicle_125 = _this;
    _this setDir 242.667;
    _this setPos [(4017.54)-_centerX+_centerSpawnX, (4017.61)-_centerY+_centerSpawnY, 1.23464];
};
_vehicle_126 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sacks_heap_F", [4023.04, 4002.3, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_126 = _this;
    _this setDir 0;
    _this setPos [(4023.04)-_centerX+_centerSpawnX, (4002.3)-_centerY+_centerSpawnY, 0];
};
_vehicle_127 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [4019.63, 4009.71, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_127 = _this;
    _this setDir 343.549;
    _this setPos [(4019.63)-_centerX+_centerSpawnX, (4009.71)-_centerY+_centerSpawnY, 4.76837E-07];
};
_vehicle_128 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [4020.83, 4012.45, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_128 = _this;
    _this setDir 242.162;
    _this setPos [(4020.83)-_centerX+_centerSpawnX, (4012.45)-_centerY+_centerSpawnY, 0];
};
_vehicle_129 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [4017.75, 4009.15, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_129 = _this;
    _this setDir 343.44;
    _this setPos [(4017.75)-_centerX+_centerSpawnX, (4009.15)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_130 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [4017.29, 4012.58, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_130 = _this;
    _this setDir 359.993;
    _this setPos [(4017.29)-_centerX+_centerSpawnX, (4012.58)-_centerY+_centerSpawnY, 0];
};
_vehicle_131 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PressureWasher_01_F", [4023.75, 4016.44, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_131 = _this;
    _this setDir 9.46933;
    _this setPos [(4023.75)-_centerX+_centerSpawnX, (4016.44)-_centerY+_centerSpawnY, 0];
};
_vehicle_132 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterBarrel_F", [4016.76, 4020.02, -0.0249977], [], 0, "CAN_COLLIDE"];
    _vehicle_132 = _this;
    _this setDir 357.606;
    _this setPos [(4016.76)-_centerX+_centerSpawnX, (4020.02)-_centerY+_centerSpawnY, -0.0249982];
};
_vehicle_133 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [4015.76, 4023.87, 1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_133 = _this;
    _this setDir 14.4554;
    _this setPos [(4015.76)-_centerX+_centerSpawnX, (4023.87)-_centerY+_centerSpawnY, 1.43051E-06];
};
_vehicle_134 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GarbageBarrel_01_F", [4010.49, 4007.41, -0.00600624], [], 0, "CAN_COLLIDE"];
    _vehicle_134 = _this;
    _this setDir 347.705;
    _this setPos [(4010.49)-_centerX+_centerSpawnX, (4007.41)-_centerY+_centerSpawnY, -0.00591278];
};
_vehicle_135 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sack_F", [4025.33, 4010.35, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_135 = _this;
    _this setDir 0;
    _this setPos [(4025.33)-_centerX+_centerSpawnX, (4010.35)-_centerY+_centerSpawnY, 0];
};
_vehicle_136 = objNull;
if (true) then
{
    _this = createVehicle ["Weapon_hgun_Rook40_F", [4016.81, 4012.54, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_136 = _this;
    _this setDir 216.038;
    _this setPos [(4016.81)-_centerX+_centerSpawnX, (4012.54)-_centerY+_centerSpawnY, 0.813006];
};
_vehicle_137 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Portable_generator_F", [4017.33, 4028.57, -0.000814438], [], 0, "CAN_COLLIDE"];
    _vehicle_137 = _this;
    _this setDir 326.767;
    _this setPos [(4017.33)-_centerX+_centerSpawnX, (4028.57)-_centerY+_centerSpawnY, -0.000811577];
};
_vehicle_138 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Portable_generator_F", [4020.52, 4005.65, -0.000818253], [], 0, "CAN_COLLIDE"];
    _vehicle_138 = _this;
    _this setDir 268.042;
    _this setPos [(4020.52)-_centerX+_centerSpawnX, (4005.65)-_centerY+_centerSpawnY, -0.000815392];
};
_vehicle_139 = objNull;
if (true) then
{
    _this = createVehicle ["Fridge_01_closed_F", [4025.38, 4029.12, -0.0249329], [], 0, "CAN_COLLIDE"];
    _vehicle_139 = _this;
    _this setDir 66.035;
    _this setPos [(4025.38)-_centerX+_centerSpawnX, (4029.12)-_centerY+_centerSpawnY, 0.576739];
};
_vehicle_140 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_End_F", [4012.37, 4012.04, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_140 = _this;
    _this setDir 267.732;
    _this setPos [(4012.37)-_centerX+_centerSpawnX, (4012.04)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_141 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V1_F", [4016.04, 4011.64, 0.00312519], [], 0, "CAN_COLLIDE"];
    _vehicle_141 = _this;
    _this setDir 197.296;
    _this setPos [(4016.04)-_centerX+_centerSpawnX, (4011.64)-_centerY+_centerSpawnY, 0.00312519];
};
_vehicle_142 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4018.49, 4011.92, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_142 = _this;
    _this setDir 115.12;
    _this setPos [(4018.49)-_centerX+_centerSpawnX, (4011.92)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_143 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4019.88, 4009.06, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_143 = _this;
    _this setDir 140.265;
    _this setPos [(4019.88)-_centerX+_centerSpawnX, (4009.06)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_144 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4017.87, 4009.87, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_144 = _this;
    _this setDir 306.046;
    _this setPos [(4017.87)-_centerX+_centerSpawnX, (4009.87)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_145 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4018.38, 4013.42, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_145 = _this;
    _this setDir 27.5183;
    _this setPos [(4018.38)-_centerX+_centerSpawnX, (4013.42)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_146 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4017.32, 4011.44, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_146 = _this;
    _this setDir 174.087;
    _this setPos [(4017.32)-_centerX+_centerSpawnX, (4011.44)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_147 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4015.9, 4013.26, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_147 = _this;
    _this setDir 309.588;
    _this setPos [(4015.9)-_centerX+_centerSpawnX, (4013.26)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_148 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4021.5, 4013.1, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_148 = _this;
    _this setDir 123.811;
    _this setPos [(4021.5)-_centerX+_centerSpawnX, (4013.1)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_149 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4018.49, 4008.64, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_149 = _this;
    _this setDir 166.866;
    _this setPos [(4018.49)-_centerX+_centerSpawnX, (4008.64)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_150 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4019.36, 4010.36, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_150 = _this;
    _this setDir 347.854;
    _this setPos [(4019.36)-_centerX+_centerSpawnX, (4010.36)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_151 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [4017.3, 4013.76, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_151 = _this;
    _this setDir 0.281352;
    _this setPos [(4017.3)-_centerX+_centerSpawnX, (4013.76)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_152 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [4011.88, 4010.77, -0.000152111], [], 0, "CAN_COLLIDE"];
    _vehicle_152 = _this;
    _this setDir 273.827;
    _this setPos [(4011.88)-_centerX+_centerSpawnX, (4010.77)-_centerY+_centerSpawnY, -0.000152111];
};
_vehicle_153 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [4017.79, 4016.58, -9.20296E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_153 = _this;
    _this setDir 0.200378;
    _this setPos [(4017.79)-_centerX+_centerSpawnX, (4016.58)-_centerY+_centerSpawnY, -9.20296E-05];
};
_vehicle_154 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PlasticCase_01_medium_F", [4019.43, 4031.04, -0.00866032], [], 0, "CAN_COLLIDE"];
    _vehicle_154 = _this;
    _this setDir 1.17636;
    _this setPos [(4019.43)-_centerX+_centerSpawnX, (4031.04)-_centerY+_centerSpawnY, 1.49735];
};
_vehicle_155 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenLog_F", [4016.49, 4008.66, 1.43051E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_155 = _this;
    _this setDir 359.561;
    _this setPos [(4016.49)-_centerX+_centerSpawnX, (4008.66)-_centerY+_centerSpawnY, 1.43051E-05];
};
_vehicle_156 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_01_khaki_F", [4024.4, 4007.22, 2.76566E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_156 = _this;
    _this setDir 30.0109;
    _this setPos [(4024.4)-_centerX+_centerSpawnX, (4007.22)-_centerY+_centerSpawnY, 2.76566E-05];
};
_vehicle_157 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_01_khaki_F", [4024.06, 4006.8, 2.47955E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_157 = _this;
    _this setDir 144.249;
    _this setPos [(4024.06)-_centerX+_centerSpawnX, (4006.8)-_centerY+_centerSpawnY, 2.47955E-05];
};
_vehicle_158 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bucket_F", [4016.32, 4018.98, 5.57899E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_158 = _this;
    _this setDir 0.042445;
    _this setPos [(4016.32)-_centerX+_centerSpawnX, (4018.98)-_centerY+_centerSpawnY, 5.57899E-05];
};
_vehicle_159 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4024.45, 4022.32, -0.026124], [], 0, "CAN_COLLIDE"];
    _vehicle_159 = _this;
    _this setDir 358.277;
    _this setPos [(4024.45)-_centerX+_centerSpawnX, (4022.32)-_centerY+_centerSpawnY, 5.73021];
};
_vehicle_160 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4023.49, 4018.04, -0.00113344], [], 0, "CAN_COLLIDE"];
    _vehicle_160 = _this;
    _this setDir 359.868;
    _this setPos [(4023.49)-_centerX+_centerSpawnX, (4018.04)-_centerY+_centerSpawnY, -0.000319004];
};
_vehicle_161 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4016.09, 4012.6, -0.00113487], [], 0, "CAN_COLLIDE"];
    _vehicle_161 = _this;
    _this setDir 359.987;
    _this setPos [(4016.09)-_centerX+_centerSpawnX, (4012.6)-_centerY+_centerSpawnY, -0.000320435];
};
_vehicle_162 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4016.33, 4017.17, -0.00113297], [], 0, "CAN_COLLIDE"];
    _vehicle_162 = _this;
    _this setDir 359.955;
    _this setPos [(4016.33)-_centerX+_centerSpawnX, (4017.17)-_centerY+_centerSpawnY, -0.000318527];
};
_vehicle_163 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4020.35, 4011.25, -0.00113344], [], 0, "CAN_COLLIDE"];
    _vehicle_163 = _this;
    _this setDir 359.923;
    _this setPos [(4020.35)-_centerX+_centerSpawnX, (4011.25)-_centerY+_centerSpawnY, -0.000319004];
};
_vehicle_164 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ExtensionCord_F", [4013.02, 4004.52, 1.09673E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_164 = _this;
    _this setDir 359.999;
    _this setPos [(4013.02)-_centerX+_centerSpawnX, (4004.52)-_centerY+_centerSpawnY, 1.04904E-05];
};
_vehicle_165 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ScrapHeap_1_F", [4035.23, 4024.23, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_165 = _this;
    _this setDir 11.7052;
    _this setPos [(4035.23)-_centerX+_centerSpawnX, (4024.23)-_centerY+_centerSpawnY, 0];
};
_vehicle_166 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ScrapHeap_1_F", [4041.51, 4028.83, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_166 = _this;
    _this setDir 186.09;
    _this setPos [(4041.51)-_centerX+_centerSpawnX, (4028.83)-_centerY+_centerSpawnY, 0];
};
_vehicle_167 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo20_military_green_F", [4033.25, 4017.28, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_167 = _this;
    _this setDir 272.821;
    _this setPos [(4033.25)-_centerX+_centerSpawnX, (4017.28)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_168 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo20_military_green_F", [4037.89, 4014.43, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_168 = _this;
    _this setDir 294.752;
    _this setPos [(4037.89)-_centerX+_centerSpawnX, (4014.43)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_169 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo20_military_green_F", [4038.32, 4021.81, 9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_169 = _this;
    _this setDir 289.146;
    _this setPos [(4038.32)-_centerX+_centerSpawnX, (4021.81)-_centerY+_centerSpawnY, 9.53674E-07];
};
_vehicle_170 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4044.74, 4027.88, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_170 = _this;
    _this setDir 275.308;
    _this setPos [(4044.74)-_centerX+_centerSpawnX, (4027.88)-_centerY+_centerSpawnY, 0];
};
_vehicle_171 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4038.21, 4006.65, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_171 = _this;
    _this setDir 287.5;
    _this setPos [(4038.21)-_centerX+_centerSpawnX, (4006.65)-_centerY+_centerSpawnY, 0];
};
_vehicle_172 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4036.55, 4001.4, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_172 = _this;
    _this setDir 287.5;
    _this setPos [(4036.55)-_centerX+_centerSpawnX, (4001.4)-_centerY+_centerSpawnY, 0];
};
_vehicle_173 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4043.28, 4022.41, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_173 = _this;
    _this setDir 287.5;
    _this setPos [(4043.28)-_centerX+_centerSpawnX, (4022.41)-_centerY+_centerSpawnY, 0];
};
_vehicle_174 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4039.88, 4011.9, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_174 = _this;
    _this setDir 287.5;
    _this setPos [(4039.88)-_centerX+_centerSpawnX, (4011.9)-_centerY+_centerSpawnY, 0];
};
_vehicle_175 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4041.62, 4017.21, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_175 = _this;
    _this setDir 287.5;
    _this setPos [(4041.62)-_centerX+_centerSpawnX, (4017.21)-_centerY+_centerSpawnY, 0];
};
_vehicle_176 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodPile_large_F", [4034.92, 4029.96, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_176 = _this;
    _this setDir 350.433;
    _this setPos [(4034.92)-_centerX+_centerSpawnX, (4029.96)-_centerY+_centerSpawnY, -0.0232067];
};
_vehicle_177 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [4033.56, 4030.54, 3.33786E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_177 = _this;
    _this setDir 99.7773;
    _this setPos [(4033.56)-_centerX+_centerSpawnX, (4030.54)-_centerY+_centerSpawnY, 3.33786E-06];
};
_vehicle_178 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_1_F", [4032.17, 4024.79, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_178 = _this;
    _this setDir 109.194;
    _this setPos [(4032.17)-_centerX+_centerSpawnX, (4024.79)-_centerY+_centerSpawnY, -1.43051E-06];
};
_vehicle_179 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_1_F", [4033.39, 4025.88, 1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_179 = _this;
    _this setDir 193.59;
    _this setPos [(4033.39)-_centerX+_centerSpawnX, (4025.88)-_centerY+_centerSpawnY, 1.43051E-06];
};
_vehicle_180 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [3999.39, 4038.43, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_180 = _this;
    _this setDir 0;
    _this setPos [(3999.39)-_centerX+_centerSpawnX, (4038.43)-_centerY+_centerSpawnY, 0];
};
_vehicle_181 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3996.41, 4033.02, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_181 = _this;
    _this setDir 166.786;
    _this setPos [(3996.41)-_centerX+_centerSpawnX, (4033.02)-_centerY+_centerSpawnY, 0];
};
_vehicle_182 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3971.86, 4032.04, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_182 = _this;
    _this setDir 328.21;
    _this setPos [(3971.86)-_centerX+_centerSpawnX, (4032.04)-_centerY+_centerSpawnY, 0];
};
_vehicle_183 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4001.84, 4034.21, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_183 = _this;
    _this setDir 166.786;
    _this setPos [(4001.84)-_centerX+_centerSpawnX, (4034.21)-_centerY+_centerSpawnY, 0];
};
_vehicle_184 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3976.62, 4035.09, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_184 = _this;
    _this setDir 328.21;
    _this setPos [(3976.62)-_centerX+_centerSpawnX, (4035.09)-_centerY+_centerSpawnY, 0];
};
_vehicle_185 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [3981.38, 4038.08, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_185 = _this;
    _this setDir 328.21;
    _this setPos [(3981.38)-_centerX+_centerSpawnX, (4038.08)-_centerY+_centerSpawnY, 0];
};
_vehicle_186 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3988.35, 4046.33, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_186 = _this;
    _this setDir 182.535;
    _this setPos [(3988.35)-_centerX+_centerSpawnX, (4046.33)-_centerY+_centerSpawnY, 0];
};
_vehicle_187 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3986.04, 4044.63, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_187 = _this;
    _this setDir 103.005;
    _this setPos [(3986.04)-_centerX+_centerSpawnX, (4044.63)-_centerY+_centerSpawnY, 0];
};
_vehicle_188 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3989.57, 4042.56, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_188 = _this;
    _this setDir 336.645;
    _this setPos [(3989.57)-_centerX+_centerSpawnX, (4042.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_189 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3986.91, 4041.36, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_189 = _this;
    _this setDir 336.645;
    _this setPos [(3986.91)-_centerX+_centerSpawnX, (4041.36)-_centerY+_centerSpawnY, 0];
};
_vehicle_190 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [3999.49, 4044.89, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_190 = _this;
    _this setDir 266.64;
    _this setPos [(3999.49)-_centerX+_centerSpawnX, (4044.89)-_centerY+_centerSpawnY, 0];
};
_vehicle_191 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [3991.76, 4043.3, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_191 = _this;
    _this setDir 341.956;
    _this setPos [(3991.76)-_centerX+_centerSpawnX, (4043.3)-_centerY+_centerSpawnY, 0];
};
_vehicle_192 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [3977, 4032.41, -0.00113344], [], 0, "CAN_COLLIDE"];
    _vehicle_192 = _this;
    _this setDir 359.976;
    _this setPos [(3977)-_centerX+_centerSpawnX, (4032.41)-_centerY+_centerSpawnY, -0.000319004];
};
_vehicle_193 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4025.98, 4035.88, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_193 = _this;
    _this setDir 0;
    _this setPos [(4025.98)-_centerX+_centerSpawnX, (4035.88)-_centerY+_centerSpawnY, 0];
};
_vehicle_194 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [4014.38, 4035.72, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_194 = _this;
    _this setDir 0;
    _this setPos [(4014.38)-_centerX+_centerSpawnX, (4035.72)-_centerY+_centerSpawnY, 0];
};
_vehicle_195 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4022.6, 4043.48, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_195 = _this;
    _this setDir 7.88863;
    _this setPos [(4022.6)-_centerX+_centerSpawnX, (4043.48)-_centerY+_centerSpawnY, 0];
};
_vehicle_196 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4006.49, 4045.72, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_196 = _this;
    _this setDir 7.88863;
    _this setPos [(4006.49)-_centerX+_centerSpawnX, (4045.72)-_centerY+_centerSpawnY, 0];
};
_vehicle_197 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4017.37, 4044.15, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_197 = _this;
    _this setDir 7.88863;
    _this setPos [(4017.37)-_centerX+_centerSpawnX, (4044.15)-_centerY+_centerSpawnY, 0];
};
_vehicle_198 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4028.04, 4042.74, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_198 = _this;
    _this setDir 15.0085;
    _this setPos [(4028.04)-_centerX+_centerSpawnX, (4042.74)-_centerY+_centerSpawnY, 0];
};
_vehicle_199 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4007.16, 4032.78, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_199 = _this;
    _this setDir 199.35;
    _this setPos [(4007.16)-_centerX+_centerSpawnX, (4032.78)-_centerY+_centerSpawnY, 0];
};
_vehicle_200 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4011.88, 4044.92, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_200 = _this;
    _this setDir 7.88863;
    _this setPos [(4011.88)-_centerX+_centerSpawnX, (4044.92)-_centerY+_centerSpawnY, 0];
};
_vehicle_201 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterTank_F", [4025.72, 4032.97, -1.04904E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_201 = _this;
    _this setDir 63.9273;
    _this setPos [(4025.72)-_centerX+_centerSpawnX, (4032.97)-_centerY+_centerSpawnY, -1.09673E-05];
};
_vehicle_202 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallets_F", [4030.37, 4033.3, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_202 = _this;
    _this setDir 0;
    _this setPos [(4030.37)-_centerX+_centerSpawnX, (4033.3)-_centerY+_centerSpawnY, 0];
};
_vehicle_203 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [4001.7, 4050.03, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_203 = _this;
    _this setDir 141.704;
    _this setPos [(4001.7)-_centerX+_centerSpawnX, (4050.03)-_centerY+_centerSpawnY, 0];
};
_vehicle_204 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [4004.56, 4049.92, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_204 = _this;
    _this setDir 221.234;
    _this setPos [(4004.56)-_centerX+_centerSpawnX, (4049.92)-_centerY+_centerSpawnY, 0];
};
_vehicle_205 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [4004.46, 4045.47, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_205 = _this;
    _this setDir 173.006;
    _this setPos [(4004.46)-_centerX+_centerSpawnX, (4045.47)-_centerY+_centerSpawnY, 0];
};
_vehicle_206 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [4001.56, 4045.09, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_206 = _this;
    _this setDir 173.006;
    _this setPos [(4001.56)-_centerX+_centerSpawnX, (4045.09)-_centerY+_centerSpawnY, 0];
};
_vehicle_207 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_vertical_F", [4029.47, 4033.23, 0.0763154], [], 0, "CAN_COLLIDE"];
    _vehicle_207 = _this;
    _this setDir 191.198;
    _this setPos [(4029.47)-_centerX+_centerSpawnX, (4033.23)-_centerY+_centerSpawnY, 0.158576];
};
_vehicle_208 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [4029.94, 4042.59, -0.0818253], [], 0, "CAN_COLLIDE"];
    _vehicle_208 = _this;
    _this setDir 260.689;
    _this setPos [(4029.94)-_centerX+_centerSpawnX, (4042.59)-_centerY+_centerSpawnY, 1.46887];
};
_vehicle_209 = objNull;
if (true) then
{
    _this = createVehicle ["StorageBladder_02_water_forest_F", [4037.74, 4036.36, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_209 = _this;
    _this setDir 24.6701;
    _this setPos [(4037.74)-_centerX+_centerSpawnX, (4036.36)-_centerY+_centerSpawnY, 0];
};
_vehicle_210 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4044.82, 4033.07, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_210 = _this;
    _this setDir 248.533;
    _this setPos [(4044.82)-_centerX+_centerSpawnX, (4033.07)-_centerY+_centerSpawnY, 0];
};
_vehicle_211 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4033.46, 4041.24, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_211 = _this;
    _this setDir 19.2534;
    _this setPos [(4033.46)-_centerX+_centerSpawnX, (4041.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_212 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [4038.72, 4039.4, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_212 = _this;
    _this setDir 22.8577;
    _this setPos [(4038.72)-_centerX+_centerSpawnX, (4039.4)-_centerY+_centerSpawnY, 0];
};
_vehicle_213 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_F", [4032.2, 4035.63, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_213 = _this;
    _this setDir 316.972;
    _this setPos [(4032.2)-_centerX+_centerSpawnX, (4035.63)-_centerY+_centerSpawnY, 0];
};
_vehicle_214 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WheelCart_F", [4033.46, 4033.21, 0.000842571], [], 0, "CAN_COLLIDE"];
    _vehicle_214 = _this;
    _this setDir 359.266;
    _this setPos [(4033.46)-_centerX+_centerSpawnX, (4033.21)-_centerY+_centerSpawnY, 0.000863552];
};
_vehicle_215 = objNull;
if (true) then
{
    _this = createVehicle ["WaterPump_01_forest_F", [4032.81, 4039.09, 0.000849247], [], 0, "CAN_COLLIDE"];
    _vehicle_215 = _this;
    _this setDir 283.275;
    _this setPos [(4032.81)-_centerX+_centerSpawnX, (4039.09)-_centerY+_centerSpawnY, 0.00084877];
};


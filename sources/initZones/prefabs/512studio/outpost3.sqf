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
  _this = createVehicle ["Land_MultiMeter_F", [3895.22, 3984.1, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setPos [3895.22, 3984.1, 0];
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
_vehicle_1 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3868.62, 3966.35, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir 91;
    _this setPos [(3868.62)-_centerX+_centerSpawnX, (3966.35)-_centerY+_centerSpawnY, 0];
};
_vehicle_2 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3871.72, 3959.4, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 225.907;
    _this setPos [(3871.72)-_centerX+_centerSpawnX, (3959.4)-_centerY+_centerSpawnY, 0];
};
_vehicle_3 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WorkStand_F", [3871.45, 3964.29, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 82.4854;
    _this setPos [(3871.45)-_centerX+_centerSpawnX, (3964.29)-_centerY+_centerSpawnY, -4.76837E-07];
};
_vehicle_4 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [3883.42, 3959.89, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 359.944;
    _this setPos [(3883.42)-_centerX+_centerSpawnX, (3959.89)-_centerY+_centerSpawnY, 0];
};
_vehicle_5 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3886.39, 3956.56, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 1.44548;
    _this setPos [(3886.39)-_centerX+_centerSpawnX, (3956.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_6 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3878.94, 3956.61, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 1.44548;
    _this setPos [(3878.94)-_centerX+_centerSpawnX, (3956.61)-_centerY+_centerSpawnY, 0];
};
_vehicle_7 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3889.52, 3960.34, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 91;
    _this setPos [(3889.52)-_centerX+_centerSpawnX, (3960.34)-_centerY+_centerSpawnY, 0];
};
_vehicle_8 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [3879.44, 3959.22, 8.10623E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 196.862;
    _this setPos [(3879.44)-_centerX+_centerSpawnX, (3959.22)-_centerY+_centerSpawnY, 8.10623E-06];
};
_vehicle_9 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [3900.2, 3966.63, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 69.2864;
    _this setPos [(3900.2)-_centerX+_centerSpawnX, (3966.63)-_centerY+_centerSpawnY, 0];
};
_vehicle_10 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3899.81, 3962.59, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 36.6874;
    _this setPos [(3899.81)-_centerX+_centerSpawnX, (3962.59)-_centerY+_centerSpawnY, 0];
};
_vehicle_11 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3900.43, 3963.33, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 29.6544;
    _this setPos [(3900.43)-_centerX+_centerSpawnX, (3963.33)-_centerY+_centerSpawnY, 0];
};
_vehicle_12 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Workbench_01_F", [3874.41, 3961, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 0.000719923;
    _this setPos [(3874.41)-_centerX+_centerSpawnX, (3961)-_centerY+_centerSpawnY, 0];
};
_vehicle_13 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierTower_F", [3904.24, 3960.42, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 0;
    _this setPos [(3904.24)-_centerX+_centerSpawnX, (3960.42)-_centerY+_centerSpawnY, 0];
};
_vehicle_14 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierWall6_F", [3912.33, 3957.24, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 180.659;
    _this setPos [(3912.33)-_centerX+_centerSpawnX, (3957.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_15 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3919.59, 3958.81, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 322.32;
    _this setPos [(3919.59)-_centerX+_centerSpawnX, (3958.81)-_centerY+_centerSpawnY, 0];
};
_vehicle_16 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3923.56, 3965.43, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 102.977;
    _this setPos [(3923.56)-_centerX+_centerSpawnX, (3965.43)-_centerY+_centerSpawnY, 0];
};
_vehicle_17 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Mil_ConcreteWall_F", [3916.97, 3960.06, 1.04904E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 89.5321;
    _this setPos [(3916.97)-_centerX+_centerSpawnX, (3960.06)-_centerY+_centerSpawnY, 0];
};
_vehicle_18 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Mil_ConcreteWall_F", [3916.97, 3964.05, 1.04904E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 89.5321;
    _this setPos [(3916.97)-_centerX+_centerSpawnX, (3964.05)-_centerY+_centerSpawnY, 0];
};
_vehicle_19 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_standard", [3919.75, 3967.45, -1.23978E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setDir 310.199;
    _this setPos [(3919.75)-_centerX+_centerSpawnX, (3967.45)-_centerY+_centerSpawnY, -1.23978E-05];
};
_vehicle_20 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [3920.87, 3964.07, -0.000169277], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 256.275;
    _this setPos [(3920.87)-_centerX+_centerSpawnX, (3964.07)-_centerY+_centerSpawnY, -0.000169277];
};
_vehicle_21 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3868.61, 3975.01, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir 91;
    _this setPos [(3868.61)-_centerX+_centerSpawnX, (3975.01)-_centerY+_centerSpawnY, 0];
};
_vehicle_22 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3868.68, 3983.52, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_22 = _this;
    _this setDir 91;
    _this setPos [(3868.68)-_centerX+_centerSpawnX, (3983.52)-_centerY+_centerSpawnY, 0];
};
_vehicle_23 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3868.63, 3992.1, 0.000489712], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 91;
    _this setPos [(3868.63)-_centerX+_centerSpawnX, (3992.1)-_centerY+_centerSpawnY, 0.000489712];
};
_vehicle_24 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3871.64, 3999.32, 0.000350475], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 137;
    _this setPos [(3871.64)-_centerX+_centerSpawnX, (3999.32)-_centerY+_centerSpawnY, 0.000350475];
};
_vehicle_25 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenBox_F", [3871.69, 3975.27, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 49.9754;
    _this setPos [(3871.69)-_centerX+_centerSpawnX, (3975.27)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_26 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Portable_generator_F", [3870.98, 3978.8, -0.000823021], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 76.7429;
    _this setPos [(3870.98)-_centerX+_centerSpawnX, (3978.8)-_centerY+_centerSpawnY, -0.00082016];
};
_vehicle_27 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3871.44, 3973.85, 5.48363E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 228.511;
    _this setPos [(3871.44)-_centerX+_centerSpawnX, (3973.85)-_centerY+_centerSpawnY, 5.48363E-05];
};
_vehicle_28 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3870.95, 3982.49, 5.34058E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 3.16161;
    _this setPos [(3870.95)-_centerX+_centerSpawnX, (3982.49)-_centerY+_centerSpawnY, 5.34058E-05];
};
_vehicle_29 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3871.67, 3973.15, 5.53131E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 231.82;
    _this setPos [(3871.67)-_centerX+_centerSpawnX, (3973.15)-_centerY+_centerSpawnY, 5.53131E-05];
};
_vehicle_30 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3870.97, 3980.52, 5.72205E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_30 = _this;
    _this setDir 2.65703;
    _this setPos [(3870.97)-_centerX+_centerSpawnX, (3980.52)-_centerY+_centerSpawnY, 5.72205E-05];
};
_vehicle_31 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Metal_wooden_rack_F", [3870.49, 3972.9, 1.7643E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_31 = _this;
    _this setDir 70.0303;
    _this setPos [(3870.49)-_centerX+_centerSpawnX, (3972.9)-_centerY+_centerSpawnY, 1.7643E-05];
};
_vehicle_32 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ShelvesWooden_khaki_F", [3870.61, 3971.52, -0.00105], [], 0, "CAN_COLLIDE"];
    _vehicle_32 = _this;
    _this setDir 8.34627;
    _this setPos [(3870.61)-_centerX+_centerSpawnX, (3971.52)-_centerY+_centerSpawnY, -0.00104904];
};
_vehicle_33 = objNull;
if (true) then
{
    _this = createVehicle ["FlexibleTank_01_forest_F", [3870.76, 3974.43, 7.43866E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 0.0271488;
    _this setPos [(3870.76)-_centerX+_centerSpawnX, (3974.43)-_centerY+_centerSpawnY, 7.43866E-05];
};
_vehicle_34 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Tower_V1_F", [3895.22, 3984.1, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 269;
    _this setPos [(3895.22)-_centerX+_centerSpawnX, (3984.1)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_35 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_INDP_big_Curator_F", [3878.21, 3990.73, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_35 = _this;
    _this setDir 272.308;
    _this setPos [(3878.21)-_centerX+_centerSpawnX, (3990.73)-_centerY+_centerSpawnY, 0];
};
_vehicle_36 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_btr80_msv", [3878.2, 3994.75, 0.0210915], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir 69.1456;
    _this setPos [(3878.2)-_centerX+_centerSpawnX, (3994.75)-_centerY+_centerSpawnY, 0.0262494];
};
_vehicle_37 = objNull;
if (true) then
{
    _this = createVehicle ["Land_LampHalogen_F", [3896.15, 3994.91, 0.273327], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir 83.8478;
    _this setPos [(3896.15)-_centerX+_centerSpawnX, (3994.91)-_centerY+_centerSpawnY, 0.273327];
};
_vehicle_38 = objNull;
if (true) then
{
    _this = createVehicle ["Land_LampHalogen_F", [3895.68, 3975.19, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_38 = _this;
    _this setDir 263.789;
    _this setPos [(3895.68)-_centerX+_centerSpawnX, (3975.19)-_centerY+_centerSpawnY, 0];
};
_vehicle_39 = objNull;
if (true) then
{
    _this = createVehicle ["RHS_Ural_MSV_01", [3877.41, 3988.77, 0.0639682], [], 0, "CAN_COLLIDE"];
    _vehicle_39 = _this;
    _this setDir 77.5781;
    _this setPos [(3877.41)-_centerX+_centerSpawnX, (3988.77)-_centerY+_centerSpawnY, -0.00889349];
};
_vehicle_40 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_tigr_msv", [3875.36, 3970.51, 0.0340195], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 75.5688;
    _this setPos [(3875.36)-_centerX+_centerSpawnX, (3970.51)-_centerY+_centerSpawnY, 0.00724363];
};
_vehicle_41 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_tigr_msv", [3875.47, 3977.64, 0.034019], [], 0, "CAN_COLLIDE"];
    _vehicle_41 = _this;
    _this setDir 125.981;
    _this setPos [(3875.47)-_centerX+_centerSpawnX, (3977.64)-_centerY+_centerSpawnY, 0.00724268];
};
_vehicle_42 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Loudspeakers_F", [3903.66, 3984.02, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir 91.8823;
    _this setPos [(3903.66)-_centerX+_centerSpawnX, (3984.02)-_centerY+_centerSpawnY, 0];
};
_vehicle_43 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo20_military_green_F", [3899.13, 3992.77, -0.0250001], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 180.243;
    _this setPos [(3899.13)-_centerX+_centerSpawnX, (3992.77)-_centerY+_centerSpawnY, -0.0250006];
};
_vehicle_44 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo20_military_green_F", [3892.98, 3992.77, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setDir 359.291;
    _this setPos [(3892.98)-_centerX+_centerSpawnX, (3992.77)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_45 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall4_F", [3890.93, 3981.48, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 270.024;
    _this setPos [(3890.93)-_centerX+_centerSpawnX, (3981.48)-_centerY+_centerSpawnY, 0];
};
_vehicle_46 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall4_F", [3893.75, 3990.67, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 359.355;
    _this setPos [(3893.75)-_centerX+_centerSpawnX, (3990.67)-_centerY+_centerSpawnY, 0];
};
_vehicle_47 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall4_F", [3899, 3990.71, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_47 = _this;
    _this setDir 359.355;
    _this setPos [(3899)-_centerX+_centerSpawnX, (3990.71)-_centerY+_centerSpawnY, 0];
};
_vehicle_48 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall4_F", [3893.6, 3977.31, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_48 = _this;
    _this setDir 179.63;
    _this setPos [(3893.6)-_centerX+_centerSpawnX, (3977.31)-_centerY+_centerSpawnY, 0];
};
_vehicle_49 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall4_F", [3890.92, 3986.73, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 270.024;
    _this setPos [(3890.92)-_centerX+_centerSpawnX, (3986.73)-_centerY+_centerSpawnY, 0];
};
_vehicle_50 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall4_F", [3898.8, 3977.39, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 179.63;
    _this setPos [(3898.8)-_centerX+_centerSpawnX, (3977.39)-_centerY+_centerSpawnY, 0];
};
_vehicle_51 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall1_F", [3901.54, 3989.83, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 88.8801;
    _this setPos [(3901.54)-_centerX+_centerSpawnX, (3989.83)-_centerY+_centerSpawnY, 0];
};
_vehicle_52 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall1_F", [3890.91, 3989.91, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 269.879;
    _this setPos [(3890.91)-_centerX+_centerSpawnX, (3989.91)-_centerY+_centerSpawnY, 0];
};
_vehicle_53 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall1_F", [3890.89, 3978.11, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir 269.879;
    _this setPos [(3890.89)-_centerX+_centerSpawnX, (3978.11)-_centerY+_centerSpawnY, 0];
};
_vehicle_54 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall1_F", [3901.55, 3988.53, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_54 = _this;
    _this setDir 88.8801;
    _this setPos [(3901.55)-_centerX+_centerSpawnX, (3988.53)-_centerY+_centerSpawnY, 0];
};
_vehicle_55 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall1_F", [3901.65, 3978.26, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_55 = _this;
    _this setDir 88.8801;
    _this setPos [(3901.65)-_centerX+_centerSpawnX, (3978.26)-_centerY+_centerSpawnY, 0];
};
_vehicle_56 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncWall1_F", [3901.63, 3979.56, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir 88.8801;
    _this setPos [(3901.63)-_centerX+_centerSpawnX, (3979.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_57 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [3892.95, 3986.26, 7.15256E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_57 = _this;
    _this setDir 269.065;
    _this setPos [(3892.95)-_centerX+_centerSpawnX, (3986.26)-_centerY+_centerSpawnY, 7.15256E-06];
};
_vehicle_58 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [3901.1, 3968.93, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_58 = _this;
    _this setDir 86.9701;
    _this setPos [(3901.1)-_centerX+_centerSpawnX, (3968.93)-_centerY+_centerSpawnY, 0];
};
_vehicle_59 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [3901.73, 3984.95, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 88.0932;
    _this setPos [(3901.73)-_centerX+_centerSpawnX, (3984.95)-_centerY+_centerSpawnY, 0];
};
_vehicle_60 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [3899.94, 3971.26, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_60 = _this;
    _this setDir 74.6916;
    _this setPos [(3899.94)-_centerX+_centerSpawnX, (3971.26)-_centerY+_centerSpawnY, 0];
};
_vehicle_61 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [3901.81, 3983.1, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_61 = _this;
    _this setDir 89.027;
    _this setPos [(3901.81)-_centerX+_centerSpawnX, (3983.1)-_centerY+_centerSpawnY, 0];
};
_vehicle_62 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3888.13, 3989.9, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_62 = _this;
    _this setDir 124.538;
    _this setPos [(3888.13)-_centerX+_centerSpawnX, (3989.9)-_centerY+_centerSpawnY, 0];
};
_vehicle_63 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3888.08, 3977.75, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_63 = _this;
    _this setDir 50.0275;
    _this setPos [(3888.08)-_centerX+_centerSpawnX, (3977.75)-_centerY+_centerSpawnY, 0];
};
_vehicle_64 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3902.6, 3978.99, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 270.424;
    _this setPos [(3902.6)-_centerX+_centerSpawnX, (3978.99)-_centerY+_centerSpawnY, 0];
};
_vehicle_65 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3902.44, 3989.08, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_65 = _this;
    _this setDir 270.424;
    _this setPos [(3902.44)-_centerX+_centerSpawnX, (3989.08)-_centerY+_centerSpawnY, 0];
};
_vehicle_66 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3888.53, 3968.93, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_66 = _this;
    _this setDir 272;
    _this setPos [(3888.53)-_centerX+_centerSpawnX, (3968.93)-_centerY+_centerSpawnY, 0];
};
_vehicle_67 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_F", [3898.96, 3995.63, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_67 = _this;
    _this setDir 0.0125855;
    _this setPos [(3898.96)-_centerX+_centerSpawnX, (3995.63)-_centerY+_centerSpawnY, -4.76837E-07];
};
_vehicle_68 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallets_stack_F", [3900.89, 3995.49, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_68 = _this;
    _this setDir 12.0903;
    _this setPos [(3900.89)-_centerX+_centerSpawnX, (3995.49)-_centerY+_centerSpawnY, 4.76837E-07];
};
_vehicle_69 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallets_stack_F", [3894.34, 3995.06, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_69 = _this;
    _this setDir 313.416;
    _this setPos [(3894.34)-_centerX+_centerSpawnX, (3995.06)-_centerY+_centerSpawnY, -4.76837E-07];
};
_vehicle_70 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3881.3, 3999.51, 5.43594E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_70 = _this;
    _this setDir 0.619395;
    _this setPos [(3881.3)-_centerX+_centerSpawnX, (3999.51)-_centerY+_centerSpawnY, 5.43594E-05];
};
_vehicle_71 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3872.22, 3981.16, 5.43594E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_71 = _this;
    _this setDir 2.55896;
    _this setPos [(3872.22)-_centerX+_centerSpawnX, (3981.16)-_centerY+_centerSpawnY, 5.43594E-05];
};
_vehicle_72 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3872.45, 3976.05, 5.53131E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_72 = _this;
    _this setDir 264.25;
    _this setPos [(3872.45)-_centerX+_centerSpawnX, (3976.05)-_centerY+_centerSpawnY, 5.53131E-05];
};
_vehicle_73 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelSand_grey_F", [3874.58, 3982.05, 5.8651E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_73 = _this;
    _this setDir 359.808;
    _this setPos [(3874.58)-_centerX+_centerSpawnX, (3982.05)-_centerY+_centerSpawnY, 5.8651E-05];
};
_vehicle_74 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelSand_grey_F", [3879.05, 3985.88, 5.81741E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_74 = _this;
    _this setDir 359.848;
    _this setPos [(3879.05)-_centerX+_centerSpawnX, (3985.88)-_centerY+_centerSpawnY, 5.81741E-05];
};
_vehicle_75 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Axe_F", [3873.39, 3973.86, -0.00336027], [], 0, "CAN_COLLIDE"];
    _vehicle_75 = _this;
    _this setDir 311.412;
    _this setPos [(3873.39)-_centerX+_centerSpawnX, (3973.86)-_centerY+_centerSpawnY, -0.00336027];
};
_vehicle_76 = objNull;
if (true) then
{
    _this = createVehicle ["RoadCone_F", [3900.32, 3975.34, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_76 = _this;
    _this setDir 359.995;
    _this setPos [(3900.32)-_centerX+_centerSpawnX, (3975.34)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_77 = objNull;
if (true) then
{
    _this = createVehicle ["RoadCone_F", [3900.24, 3973.67, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_77 = _this;
    _this setDir 359.996;
    _this setPos [(3900.24)-_centerX+_centerSpawnX, (3973.67)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_78 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CanisterFuel_F", [3872.11, 3972.03, 5.10216E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_78 = _this;
    _this setDir 94.5457;
    _this setPos [(3872.11)-_centerX+_centerSpawnX, (3972.03)-_centerY+_centerSpawnY, 5.10216E-05];
};
_vehicle_79 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CarBattery_01_F", [3872.67, 3972.97, 2.86102E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_79 = _this;
    _this setDir 32.9566;
    _this setPos [(3872.67)-_centerX+_centerSpawnX, (3972.97)-_centerY+_centerSpawnY, 2.38419E-06];
};
_vehicle_80 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bucket_F", [3872.28, 3973.92, 5.76973E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_80 = _this;
    _this setDir 0.00341108;
    _this setPos [(3872.28)-_centerX+_centerSpawnX, (3973.92)-_centerY+_centerSpawnY, 5.76973E-05];
};
_vehicle_81 = objNull;
if (true) then
{
    _this = createVehicle ["Land_DrillAku_F", [3873, 3974.07, 0.000106812], [], 0, "CAN_COLLIDE"];
    _vehicle_81 = _this;
    _this setDir 0.518062;
    _this setPos [(3873)-_centerX+_centerSpawnX, (3974.07)-_centerY+_centerSpawnY, 0.000107288];
};
_vehicle_82 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CarBattery_02_F", [3873.52, 3973.21, -1.90735E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_82 = _this;
    _this setDir 0.0852582;
    _this setPos [(3873.52)-_centerX+_centerSpawnX, (3973.21)-_centerY+_centerSpawnY, -2.38419E-06];
};
_vehicle_83 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Hammer_F", [3872.66, 3973.44, -0.0139804], [], 0, "CAN_COLLIDE"];
    _vehicle_83 = _this;
    _this setDir 0.490405;
    _this setPos [(3872.66)-_centerX+_centerSpawnX, (3973.44)-_centerY+_centerSpawnY, -0.0133939];
};
_vehicle_84 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pliers_F", [3873.4, 3974.42, -0.00142813], [], 0, "CAN_COLLIDE"];
    _vehicle_84 = _this;
    _this setDir 0.00764136;
    _this setPos [(3873.4)-_centerX+_centerSpawnX, (3974.42)-_centerY+_centerSpawnY, -0.00142765];
};
_vehicle_85 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MultiMeter_F", [3873.85, 3974.56, 9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_85 = _this;
    _this setDir 359.96;
    _this setPos [(3873.85)-_centerX+_centerSpawnX, (3974.56)-_centerY+_centerSpawnY, 9.53674E-07];
};
_vehicle_86 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [3877.18, 3980.3, -0.0011344], [], 0, "CAN_COLLIDE"];
    _vehicle_86 = _this;
    _this setDir 0.275992;
    _this setPos [(3877.18)-_centerX+_centerSpawnX, (3980.3)-_centerY+_centerSpawnY, -0.000319958];
};
_vehicle_87 = objNull;
if (true) then
{
    _this = createVehicle ["Land_TTowerSmall_2_F", [3918.04, 3977.05, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_87 = _this;
    _this setDir 359;
    _this setPos [(3918.04)-_centerX+_centerSpawnX, (3977.05)-_centerY+_centerSpawnY, 0];
};
_vehicle_88 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_House_V1_F", [3920.01, 3979.94, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_88 = _this;
    _this setDir 91.0438;
    _this setPos [(3920.01)-_centerX+_centerSpawnX, (3979.94)-_centerY+_centerSpawnY, 0];
};
_vehicle_89 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3928.23, 3988.79, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_89 = _this;
    _this setDir 323.054;
    _this setPos [(3928.23)-_centerX+_centerSpawnX, (3988.79)-_centerY+_centerSpawnY, 0];
};
_vehicle_90 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3924.84, 3982.11, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_90 = _this;
    _this setDir 273;
    _this setPos [(3924.84)-_centerX+_centerSpawnX, (3982.11)-_centerY+_centerSpawnY, 0];
};
_vehicle_91 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3924.64, 3973.52, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_91 = _this;
    _this setDir 273;
    _this setPos [(3924.64)-_centerX+_centerSpawnX, (3973.52)-_centerY+_centerSpawnY, 0];
};
_vehicle_92 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3935.89, 3992.26, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_92 = _this;
    _this setDir 350.582;
    _this setPos [(3935.89)-_centerX+_centerSpawnX, (3992.26)-_centerY+_centerSpawnY, 0];
};
_vehicle_93 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium4_F", [3908.92, 3997.73, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_93 = _this;
    _this setDir 270.436;
    _this setPos [(3908.92)-_centerX+_centerSpawnX, (3997.73)-_centerY+_centerSpawnY, 0];
};
_vehicle_94 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_Flag_Russia_F", [3917.65, 3981.51, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_94 = _this;
    _this setDir 0;
    _this setPos [(3917.65)-_centerX+_centerSpawnX, (3981.51)-_centerY+_centerSpawnY, 0];
};
_vehicle_95 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [3913.63, 3979.24, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_95 = _this;
    _this setDir 269.924;
    _this setPos [(3913.63)-_centerX+_centerSpawnX, (3979.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_96 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Mil_ConcreteWall_F", [3916.87, 3973.61, 1.04904E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_96 = _this;
    _this setDir 89.5321;
    _this setPos [(3916.87)-_centerX+_centerSpawnX, (3973.61)-_centerY+_centerSpawnY, 0];
};
_vehicle_97 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Mil_ConcreteWall_F", [3916.94, 3968.06, 1.04904E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_97 = _this;
    _this setDir 89.5321;
    _this setPos [(3916.94)-_centerX+_centerSpawnX, (3968.06)-_centerY+_centerSpawnY, 0];
};
_vehicle_98 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3915.98, 3984.82, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_98 = _this;
    _this setDir 132.084;
    _this setPos [(3915.98)-_centerX+_centerSpawnX, (3984.82)-_centerY+_centerSpawnY, 0];
};
_vehicle_99 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3904.26, 3985.52, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_99 = _this;
    _this setDir 214.925;
    _this setPos [(3904.26)-_centerX+_centerSpawnX, (3985.52)-_centerY+_centerSpawnY, 0];
};
_vehicle_100 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3904.29, 3982.47, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_100 = _this;
    _this setDir 322.069;
    _this setPos [(3904.29)-_centerX+_centerSpawnX, (3982.47)-_centerY+_centerSpawnY, 0];
};
_vehicle_101 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3916.04, 3976.17, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_101 = _this;
    _this setDir 46.0097;
    _this setPos [(3916.04)-_centerX+_centerSpawnX, (3976.17)-_centerY+_centerSpawnY, 0];
};
_vehicle_102 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PowerGenerator_F", [3921.81, 3983.67, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_102 = _this;
    _this setDir 270.887;
    _this setPos [(3921.81)-_centerX+_centerSpawnX, (3983.67)-_centerY+_centerSpawnY, 0];
};
_vehicle_103 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3916.66, 3976.76, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_103 = _this;
    _this setDir 29.6544;
    _this setPos [(3916.66)-_centerX+_centerSpawnX, (3976.76)-_centerY+_centerSpawnY, 0];
};
_vehicle_104 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3916.84, 3983.81, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_104 = _this;
    _this setDir 137.263;
    _this setPos [(3916.84)-_centerX+_centerSpawnX, (3983.81)-_centerY+_centerSpawnY, 0];
};
_vehicle_105 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3918.91, 3975.71, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_105 = _this;
    _this setDir 0;
    _this setPos [(3918.91)-_centerX+_centerSpawnX, (3975.71)-_centerY+_centerSpawnY, 0];
};
_vehicle_106 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3922.01, 3975.73, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_106 = _this;
    _this setDir 0;
    _this setPos [(3922.01)-_centerX+_centerSpawnX, (3975.73)-_centerY+_centerSpawnY, 0];
};
_vehicle_107 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3918.9, 3985.24, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_107 = _this;
    _this setDir 0;
    _this setPos [(3918.9)-_centerX+_centerSpawnX, (3985.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_108 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [3921.92, 3985.25, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_108 = _this;
    _this setDir 0;
    _this setPos [(3921.92)-_centerX+_centerSpawnX, (3985.25)-_centerY+_centerSpawnY, 0];
};
_vehicle_109 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MapBoard_F", [3910.85, 3997.7, -0.00218773], [], 0, "CAN_COLLIDE"];
    _vehicle_109 = _this;
    _this setDir 268.007;
    _this setPos [(3910.85)-_centerX+_centerSpawnX, (3997.7)-_centerY+_centerSpawnY, -0.00217295];
};
_vehicle_110 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenTable_large_F", [3931.18, 3996.43, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_110 = _this;
    _this setDir 279.85;
    _this setPos [(3931.18)-_centerX+_centerSpawnX, (3996.43)-_centerY+_centerSpawnY, -1.43051E-06];
};
_vehicle_111 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Short_F", [3912.68, 3982.38, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_111 = _this;
    _this setDir 104.305;
    _this setPos [(3912.68)-_centerX+_centerSpawnX, (3982.38)-_centerY+_centerSpawnY, 0];
};
_vehicle_112 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Short_F", [3912.7, 3978.24, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_112 = _this;
    _this setDir 256.78;
    _this setPos [(3912.7)-_centerX+_centerSpawnX, (3978.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_113 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3930.99, 3995.28, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_113 = _this;
    _this setDir 276.473;
    _this setPos [(3930.99)-_centerX+_centerSpawnX, (3995.28)-_centerY+_centerSpawnY, 0];
};
_vehicle_114 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3931.27, 3998.08, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_114 = _this;
    _this setDir 276.335;
    _this setPos [(3931.27)-_centerX+_centerSpawnX, (3998.08)-_centerY+_centerSpawnY, 0];
};
_vehicle_115 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3915.49, 3996.06, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_115 = _this;
    _this setDir 1.70509;
    _this setPos [(3915.49)-_centerX+_centerSpawnX, (3996.06)-_centerY+_centerSpawnY, 0];
};
_vehicle_116 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3913.56, 3999.1, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_116 = _this;
    _this setDir 1.70782;
    _this setPos [(3913.56)-_centerX+_centerSpawnX, (3999.1)-_centerY+_centerSpawnY, 0];
};
_vehicle_117 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3915.53, 3999.02, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_117 = _this;
    _this setDir 1.73369;
    _this setPos [(3915.53)-_centerX+_centerSpawnX, (3999.02)-_centerY+_centerSpawnY, 0];
};
_vehicle_118 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3913.61, 3996.05, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_118 = _this;
    _this setDir 1.70403;
    _this setPos [(3913.61)-_centerX+_centerSpawnX, (3996.05)-_centerY+_centerSpawnY, 0];
};
_vehicle_119 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3911.03, 3995.49, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_119 = _this;
    _this setDir 226.042;
    _this setPos [(3911.03)-_centerX+_centerSpawnX, (3995.49)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_120 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3934.75, 3996.45, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_120 = _this;
    _this setDir 226.046;
    _this setPos [(3934.75)-_centerX+_centerSpawnX, (3996.45)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_121 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [3920.55, 3973.15, -9.20296E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_121 = _this;
    _this setDir 0.0347421;
    _this setPos [(3920.55)-_centerX+_centerSpawnX, (3973.15)-_centerY+_centerSpawnY, -9.20296E-05];
};
_vehicle_122 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [3921.8, 3970.51, -0.000169277], [], 0, "CAN_COLLIDE"];
    _vehicle_122 = _this;
    _this setDir 256.282;
    _this setPos [(3921.8)-_centerX+_centerSpawnX, (3970.51)-_centerY+_centerSpawnY, -0.000169277];
};
_vehicle_123 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelTrash_grey_F", [3917.64, 3982.67, 5.81741E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_123 = _this;
    _this setDir 359.314;
    _this setPos [(3917.64)-_centerX+_centerSpawnX, (3982.67)-_centerY+_centerSpawnY, 5.81741E-05];
};
_vehicle_124 = objNull;
if (true) then
{
    _this = createVehicle ["RoadCone_F", [3906.73, 3993.67, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_124 = _this;
    _this setDir 359.96;
    _this setPos [(3906.73)-_centerX+_centerSpawnX, (3993.67)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_125 = objNull;
if (true) then
{
    _this = createVehicle ["RoadCone_F", [3904.24, 3993.75, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_125 = _this;
    _this setDir 359.96;
    _this setPos [(3904.24)-_centerX+_centerSpawnX, (3993.75)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_126 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BakedBeans_F", [3930.7, 3996.13, -0.0499296], [], 0, "CAN_COLLIDE"];
    _vehicle_126 = _this;
    _this setDir 153.119;
    _this setPos [(3930.7)-_centerX+_centerSpawnX, (3996.13)-_centerY+_centerSpawnY, 0.814653];
};
_vehicle_127 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BakedBeans_F", [3931.57, 3996.05, -0.049931], [], 0, "CAN_COLLIDE"];
    _vehicle_127 = _this;
    _this setDir 178.299;
    _this setPos [(3931.57)-_centerX+_centerSpawnX, (3996.05)-_centerY+_centerSpawnY, 0.814651];
};
_vehicle_128 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Can_Dented_F", [3930.55, 3996.67, 0.814398], [], 0, "CAN_COLLIDE"];
    _vehicle_128 = _this;
    _this setDir 359.995;
    _this setPos [(3930.55)-_centerX+_centerSpawnX, (3996.67)-_centerY+_centerSpawnY, 0.814398];
};
_vehicle_129 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Can_V3_F", [3930.89, 3996.69, 0.814689], [], 0, "CAN_COLLIDE"];
    _vehicle_129 = _this;
    _this setDir 1.08757;
    _this setPos [(3930.89)-_centerX+_centerSpawnX, (3996.69)-_centerY+_centerSpawnY, 0.81469];
};
_vehicle_130 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [3919.83, 3969.78, -0.00113297], [], 0, "CAN_COLLIDE"];
    _vehicle_130 = _this;
    _this setDir 358.266;
    _this setPos [(3919.83)-_centerX+_centerSpawnX, (3969.78)-_centerY+_centerSpawnY, -0.000318527];
};
_vehicle_131 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3942.84, 3996.24, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_131 = _this;
    _this setDir 309.298;
    _this setPos [(3942.84)-_centerX+_centerSpawnX, (3996.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_132 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterTank_F", [3940.79, 3999.43, -1.00136E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_132 = _this;
    _this setDir 359.621;
    _this setPos [(3940.79)-_centerX+_centerSpawnX, (3999.43)-_centerY+_centerSpawnY, -1.00136E-05];
};
_vehicle_133 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenTable_small_F", [3936.32, 3996.9, -2.38419E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_133 = _this;
    _this setDir 277.904;
    _this setPos [(3936.32)-_centerX+_centerSpawnX, (3996.9)-_centerY+_centerSpawnY, -2.38419E-06];
};
_vehicle_134 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ShelvesWooden_khaki_F", [3938.26, 3995.51, -0.0010519], [], 0, "CAN_COLLIDE"];
    _vehicle_134 = _this;
    _this setDir 89.4436;
    _this setPos [(3938.26)-_centerX+_centerSpawnX, (3995.51)-_centerY+_centerSpawnY, -0.00105095];
};
_vehicle_135 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ShelvesWooden_khaki_F", [3937.02, 3995.16, -0.00104618], [], 0, "CAN_COLLIDE"];
    _vehicle_135 = _this;
    _this setDir 9.13644;
    _this setPos [(3937.02)-_centerX+_centerSpawnX, (3995.16)-_centerY+_centerSpawnY, -0.00104523];
};
_vehicle_136 = objNull;
if (true) then
{
    _this = createVehicle ["Fridge_01_closed_F", [3936.05, 3994.11, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_136 = _this;
    _this setDir 161.388;
    _this setPos [(3936.05)-_centerX+_centerSpawnX, (3994.11)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_137 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3937.84, 3997.28, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_137 = _this;
    _this setDir 101.229;
    _this setPos [(3937.84)-_centerX+_centerSpawnX, (3997.28)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_138 = objNull;
if (true) then
{
    _this = createVehicle ["Land_FoodContainer_01_F", [3940.09, 3997.35, 2.71797E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_138 = _this;
    _this setDir 359.724;
    _this setPos [(3940.09)-_centerX+_centerSpawnX, (3997.35)-_centerY+_centerSpawnY, 2.67029E-05];
};
_vehicle_139 = objNull;
if (true) then
{
    _this = createVehicle ["Land_FoodContainer_01_F", [3939.54, 3997.39, 2.76566E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_139 = _this;
    _this setDir 323.259;
    _this setPos [(3939.54)-_centerX+_centerSpawnX, (3997.39)-_centerY+_centerSpawnY, 2.71797E-05];
};
_vehicle_140 = objNull;
if (true) then
{
    _this = createVehicle ["Land_FoodContainer_01_F", [3939.92, 3996.8, 2.76566E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_140 = _this;
    _this setDir 166.786;
    _this setPos [(3939.92)-_centerX+_centerSpawnX, (3996.8)-_centerY+_centerSpawnY, 2.71797E-05];
};
_vehicle_141 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bucket_F", [3938.8, 3999.74, 5.57899E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_141 = _this;
    _this setDir 0.0579895;
    _this setPos [(3938.8)-_centerX+_centerSpawnX, (3999.74)-_centerY+_centerSpawnY, 5.57899E-05];
};
_vehicle_142 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Microwave_01_F", [3936.99, 3995.18, -0.0600514], [], 0, "CAN_COLLIDE"];
    _vehicle_142 = _this;
    _this setDir 141.302;
    _this setPos [(3936.99)-_centerX+_centerSpawnX, (3995.18)-_centerY+_centerSpawnY, 0.929846];
};
_vehicle_143 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BakedBeans_F", [3936.1, 3997.22, -0.0499387], [], 0, "CAN_COLLIDE"];
    _vehicle_143 = _this;
    _this setDir 177.984;
    _this setPos [(3936.1)-_centerX+_centerSpawnX, (3997.22)-_centerY+_centerSpawnY, 0.814655];
};
_vehicle_144 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagBunker_Large_F", [3888.09, 4006.28, 0.17834], [], 0, "CAN_COLLIDE"];
    _vehicle_144 = _this;
    _this setDir 179;
    _this setPos [(3888.09)-_centerX+_centerSpawnX, (4006.28)-_centerY+_centerSpawnY, 0.17834];
};
_vehicle_145 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3879.29, 4002.67, 0.000293255], [], 0, "CAN_COLLIDE"];
    _vehicle_145 = _this;
    _this setDir 179;
    _this setPos [(3879.29)-_centerX+_centerSpawnX, (4002.67)-_centerY+_centerSpawnY, 0.000293255];
};
_vehicle_146 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [3903.71, 4002.12, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_146 = _this;
    _this setDir 161.648;
    _this setPos [(3903.71)-_centerX+_centerSpawnX, (4002.12)-_centerY+_centerSpawnY, 0];
};
_vehicle_147 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [3880.81, 4000.24, 5.29289E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_147 = _this;
    _this setDir 287.204;
    _this setPos [(3880.81)-_centerX+_centerSpawnX, (4000.24)-_centerY+_centerSpawnY, 5.29289E-05];
};
_vehicle_148 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelSand_grey_F", [3882.29, 4000.5, 5.8651E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_148 = _this;
    _this setDir 358.708;
    _this setPos [(3882.29)-_centerX+_centerSpawnX, (4000.5)-_centerY+_centerSpawnY, 5.8651E-05];
};
_vehicle_149 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [3910.99, 4006.86, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_149 = _this;
    _this setDir 179.387;
    _this setPos [(3910.99)-_centerX+_centerSpawnX, (4006.86)-_centerY+_centerSpawnY, 0];
};
_vehicle_150 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3924.97, 4010.45, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_150 = _this;
    _this setDir 1.20943;
    _this setPos [(3924.97)-_centerX+_centerSpawnX, (4010.45)-_centerY+_centerSpawnY, 0];
};
_vehicle_151 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3933.73, 4010.53, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_151 = _this;
    _this setDir 180.664;
    _this setPos [(3933.73)-_centerX+_centerSpawnX, (4010.53)-_centerY+_centerSpawnY, 0];
};
_vehicle_152 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3916.33, 4010.5, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_152 = _this;
    _this setDir 180.889;
    _this setPos [(3916.33)-_centerX+_centerSpawnX, (4010.5)-_centerY+_centerSpawnY, 0];
};
_vehicle_153 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3908.87, 4010.48, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_153 = _this;
    _this setDir 180.889;
    _this setPos [(3908.87)-_centerX+_centerSpawnX, (4010.48)-_centerY+_centerSpawnY, 0];
};
_vehicle_154 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3905.78, 4006.66, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_154 = _this;
    _this setDir 270.443;
    _this setPos [(3905.78)-_centerX+_centerSpawnX, (4006.66)-_centerY+_centerSpawnY, 0];
};
_vehicle_155 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [3919.81, 4007.93, 1.43051E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_155 = _this;
    _this setDir 17.6422;
    _this setPos [(3919.81)-_centerX+_centerSpawnX, (4007.93)-_centerY+_centerSpawnY, 1.43051E-05];
};
_vehicle_156 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [3921.48, 4008.09, 1.04904E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_156 = _this;
    _this setDir 346.906;
    _this setPos [(3921.48)-_centerX+_centerSpawnX, (4008.09)-_centerY+_centerSpawnY, 1.04904E-05];
};
_vehicle_157 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [3904.27, 4000.67, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_157 = _this;
    _this setDir 156.773;
    _this setPos [(3904.27)-_centerX+_centerSpawnX, (4000.67)-_centerY+_centerSpawnY, 0];
};
_vehicle_158 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenTable_large_F", [3934.38, 4001.51, 1.09673E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_158 = _this;
    _this setDir 350.581;
    _this setPos [(3934.38)-_centerX+_centerSpawnX, (4001.51)-_centerY+_centerSpawnY, 1.09673E-05];
};
_vehicle_159 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenTable_large_F", [3929.49, 4005.53, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_159 = _this;
    _this setDir 70.2471;
    _this setPos [(3929.49)-_centerX+_centerSpawnX, (4005.53)-_centerY+_centerSpawnY, 4.76837E-07];
};
_vehicle_160 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenTable_small_F", [3915.86, 4004.96, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_160 = _this;
    _this setDir 265.186;
    _this setPos [(3915.86)-_centerX+_centerSpawnX, (4004.96)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_161 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3935.82, 4001.33, 1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_161 = _this;
    _this setDir 359.993;
    _this setPos [(3935.82)-_centerX+_centerSpawnX, (4001.33)-_centerY+_centerSpawnY, 1.43051E-06];
};
_vehicle_162 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3929.06, 4006.65, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_162 = _this;
    _this setDir 253.383;
    _this setPos [(3929.06)-_centerX+_centerSpawnX, (4006.65)-_centerY+_centerSpawnY, 0];
};
_vehicle_163 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3933.12, 4001.57, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_163 = _this;
    _this setDir 0.0317149;
    _this setPos [(3933.12)-_centerX+_centerSpawnX, (4001.57)-_centerY+_centerSpawnY, 0];
};
_vehicle_164 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [3930.08, 4004.1, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_164 = _this;
    _this setDir 253.428;
    _this setPos [(3930.08)-_centerX+_centerSpawnX, (4004.1)-_centerY+_centerSpawnY, -4.76837E-07];
};
_vehicle_165 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3935.73, 4004.91, 1.00136E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_165 = _this;
    _this setDir 226.077;
    _this setPos [(3935.73)-_centerX+_centerSpawnX, (4004.91)-_centerY+_centerSpawnY, 9.53674E-06];
};
_vehicle_166 = objNull;
if (true) then
{
    _this = createVehicle ["Land_FoodContainer_01_F", [3934.31, 4001.94, -0.0496879], [], 0, "CAN_COLLIDE"];
    _vehicle_166 = _this;
    _this setDir 323.399;
    _this setPos [(3934.31)-_centerX+_centerSpawnX, (4001.94)-_centerY+_centerSpawnY, 0.814915];
};
_vehicle_167 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BakedBeans_F", [3929.05, 4005.35, -0.0499716], [], 0, "CAN_COLLIDE"];
    _vehicle_167 = _this;
    _this setDir 177.441;
    _this setPos [(3929.05)-_centerX+_centerSpawnX, (4005.35)-_centerY+_centerSpawnY, 0.814619];
};
_vehicle_168 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_INDP_open_Curator_F", [3923.21, 4000.02, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_168 = _this;
    _this setDir 83.6557;
    _this setPos [(3923.21)-_centerX+_centerSpawnX, (4000.02)-_centerY+_centerSpawnY, 0];
};
_vehicle_169 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [3933.93, 4003.46, -0.00112104], [], 0, "CAN_COLLIDE"];
    _vehicle_169 = _this;
    _this setDir 0.0961893;
    _this setPos [(3933.93)-_centerX+_centerSpawnX, (4003.46)-_centerY+_centerSpawnY, -0.000306606];
};
_vehicle_170 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3944.65, 4003.54, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_170 = _this;
    _this setDir 88.4974;
    _this setPos [(3944.65)-_centerX+_centerSpawnX, (4003.54)-_centerY+_centerSpawnY, 0];
};
_vehicle_171 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [3941.25, 4008.92, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_171 = _this;
    _this setDir 22.7925;
    _this setPos [(3941.25)-_centerX+_centerSpawnX, (4008.92)-_centerY+_centerSpawnY, 0];
};
_vehicle_172 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterTank_F", [3940.69, 4005.2, -4.29153E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_172 = _this;
    _this setDir 357.492;
    _this setPos [(3940.69)-_centerX+_centerSpawnX, (4005.2)-_centerY+_centerSpawnY, -4.76837E-06];
};
_vehicle_173 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterTank_F", [3940.65, 4002.48, -4.29153E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_173 = _this;
    _this setDir 357.488;
    _this setPos [(3940.65)-_centerX+_centerSpawnX, (4002.48)-_centerY+_centerSpawnY, -4.29153E-06];
};
_vehicle_174 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelWater_F", [3939.82, 4004.09, 6.05583E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_174 = _this;
    _this setDir 356.607;
    _this setPos [(3939.82)-_centerX+_centerSpawnX, (4004.09)-_centerY+_centerSpawnY, 6.05583E-05];
};
_vehicle_175 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelWater_F", [3939, 4004.53, 5.8651E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_175 = _this;
    _this setDir 355.23;
    _this setPos [(3939)-_centerX+_centerSpawnX, (4004.53)-_centerY+_centerSpawnY, 5.8651E-05];
};
_vehicle_176 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelEmpty_F", [3939.45, 4000.36, 6.05583E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_176 = _this;
    _this setDir 357.683;
    _this setPos [(3939.45)-_centerX+_centerSpawnX, (4000.36)-_centerY+_centerSpawnY, 6.05583E-05];
};
_vehicle_177 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterCooler_01_old_F", [3940.25, 4001.1, 9.91821E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_177 = _this;
    _this setDir 275.352;
    _this setPos [(3940.25)-_centerX+_centerSpawnX, (4001.1)-_centerY+_centerSpawnY, 9.91821E-05];
};
_vehicle_178 = objNull;
if (true) then
{
    _this = createVehicle ["Land_TablePlastic_01_F", [3936.34, 4006.54, -4.29153E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_178 = _this;
    _this setDir 245.652;
    _this setPos [(3936.34)-_centerX+_centerSpawnX, (4006.54)-_centerY+_centerSpawnY, -4.29153E-06];
};
_vehicle_179 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3938.11, 4005.97, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_179 = _this;
    _this setDir 101.235;
    _this setPos [(3938.11)-_centerX+_centerSpawnX, (4005.97)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_180 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [3936.22, 4008.28, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_180 = _this;
    _this setDir 18.1926;
    _this setPos [(3936.22)-_centerX+_centerSpawnX, (4008.28)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_181 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CerealsBox_F", [3936.43, 4007, -0.0545115], [], 0, "CAN_COLLIDE"];
    _vehicle_181 = _this;
    _this setDir 164.639;
    _this setPos [(3936.43)-_centerX+_centerSpawnX, (4007)-_centerY+_centerSpawnY, 0.832572];
};
_vehicle_182 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CanisterPlastic_F", [3938.96, 4002.68, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_182 = _this;
    _this setDir 0.727041;
    _this setPos [(3938.96)-_centerX+_centerSpawnX, (4002.68)-_centerY+_centerSpawnY, 0];
};
_vehicle_183 = objNull;
if (true) then
{
    _this = createVehicle ["Land_FMradio_F", [3936.22, 4006.42, -0.0545321], [], 0, "CAN_COLLIDE"];
    _vehicle_183 = _this;
    _this setDir 0.218651;
    _this setPos [(3936.22)-_centerX+_centerSpawnX, (4006.42)-_centerY+_centerSpawnY, 0.832537];
};
_vehicle_184 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Ketchup_01_F", [3936.11, 4007.04, -0.0543218], [], 0, "CAN_COLLIDE"];
    _vehicle_184 = _this;
    _this setDir 357.207;
    _this setPos [(3936.11)-_centerX+_centerSpawnX, (4007.04)-_centerY+_centerSpawnY, 0.832755];
};
_vehicle_185 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Map_blank_F", [3937.34, 4007.03, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_185 = _this;
    _this setDir 351.837;
    _this setPos [(3937.34)-_centerX+_centerSpawnX, (4007.03)-_centerY+_centerSpawnY, 0];
};


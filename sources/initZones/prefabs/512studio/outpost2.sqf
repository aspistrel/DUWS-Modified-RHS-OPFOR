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
  _this = createVehicle ["Land_MultiMeter_F", [1775.06, 5745.57, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setPos [1775.06, 5745.57, 0];
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
    _this = createVehicle ["Land_BagBunker_Large_F", [1777.31, 5739.38, 0.17834], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir 17.6067;
    _this setPos [(1777.31)-_centerX+_centerSpawnX, (5739.38)-_centerY+_centerSpawnY, 0.17834];
};
_vehicle_2 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [1764.9, 5754.24, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 116.939;
    _this setPos [(1764.9)-_centerX+_centerSpawnX, (5754.24)-_centerY+_centerSpawnY, 0];
};
_vehicle_3 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterTank_F", [1790.37, 5740.83, -9.53674E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 103.995;
    _this setPos [(1790.37)-_centerX+_centerSpawnX, (5740.83)-_centerY+_centerSpawnY, -9.53674E-06];
};
_vehicle_4 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [1784.87, 5733.18, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 198.349;
    _this setPos [(1784.87)-_centerX+_centerSpawnX, (5733.18)-_centerY+_centerSpawnY, 0];
};
_vehicle_5 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1791.78, 5751, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 287.241;
    _this setPos [(1791.78)-_centerX+_centerSpawnX, (5751)-_centerY+_centerSpawnY, 0];
};
_vehicle_6 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1793.41, 5756.41, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 288.241;
    _this setPos [(1793.41)-_centerX+_centerSpawnX, (5756.41)-_centerY+_centerSpawnY, 0];
};
_vehicle_7 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1790.98, 5735.46, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 109.565;
    _this setPos [(1790.98)-_centerX+_centerSpawnX, (5735.46)-_centerY+_centerSpawnY, 0];
};
_vehicle_8 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1794.29, 5745.81, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 109.446;
    _this setPos [(1794.29)-_centerX+_centerSpawnX, (5745.81)-_centerY+_centerSpawnY, 0];
};
_vehicle_9 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1794.06, 5746.41, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 240.241;
    _this setPos [(1794.06)-_centerX+_centerSpawnX, (5746.41)-_centerY+_centerSpawnY, 0];
};
_vehicle_10 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1782.09, 5753.56, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 285.617;
    _this setPos [(1782.09)-_centerX+_centerSpawnX, (5753.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_11 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterBarrel_F", [1791.39, 5742.92, 8.10623E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 205.271;
    _this setPos [(1791.39)-_centerX+_centerSpawnX, (5742.92)-_centerY+_centerSpawnY, 7.62939E-06];
};
_vehicle_12 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [1775.94, 5762.31, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 210.882;
    _this setPos [(1775.94)-_centerX+_centerSpawnX, (5762.31)-_centerY+_centerSpawnY, 0];
};
_vehicle_13 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo20_military_green_F", [1762.91, 5744.72, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 105.245;
    _this setPos [(1762.91)-_centerX+_centerSpawnX, (5744.72)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_14 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_Patrol_V1_F", [1788.41, 5755.88, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 15.2413;
    _this setPos [(1788.41)-_centerX+_centerSpawnX, (5755.88)-_centerY+_centerSpawnY, 0];
};
_vehicle_15 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_closed_F", [1764.89, 5742.5, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 29.1065;
    _this setPos [(1764.89)-_centerX+_centerSpawnX, (5742.5)-_centerY+_centerSpawnY, 0];
};
_vehicle_16 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelEmpty_grey_F", [1790.27, 5742.63, 5.81741E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 170.392;
    _this setPos [(1790.27)-_centerX+_centerSpawnX, (5742.63)-_centerY+_centerSpawnY, 5.81741E-05];
};
_vehicle_17 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelTrash_grey_F", [1781.77, 5752.56, 6.58035E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 136.897;
    _this setPos [(1781.77)-_centerX+_centerSpawnX, (5752.56)-_centerY+_centerSpawnY, 6.58035E-05];
};
_vehicle_18 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallets_stack_F", [1765.57, 5744.49, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 69.684;
    _this setPos [(1765.57)-_centerX+_centerSpawnX, (5744.49)-_centerY+_centerSpawnY, 4.76837E-07];
};
_vehicle_19 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [1789.81, 5761.86, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setDir 16.2413;
    _this setPos [(1789.81)-_centerX+_centerSpawnX, (5761.86)-_centerY+_centerSpawnY, 0];
};
_vehicle_20 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1792.47, 5740.56, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 108.284;
    _this setPos [(1792.47)-_centerX+_centerSpawnX, (5740.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_21 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1784.88, 5763.41, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir 105.37;
    _this setPos [(1784.88)-_centerX+_centerSpawnX, (5763.41)-_centerY+_centerSpawnY, 0];
};
_vehicle_22 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [1771.41, 5765.04, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_22 = _this;
    _this setDir 16.2413;
    _this setPos [(1771.41)-_centerX+_centerSpawnX, (5765.04)-_centerY+_centerSpawnY, 0];
};
_vehicle_23 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrierBig_F", [1764.02, 5739.81, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 198.349;
    _this setPos [(1764.02)-_centerX+_centerSpawnX, (5739.81)-_centerY+_centerSpawnY, 0];
};
_vehicle_24 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1764.92, 5761.37, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 107.452;
    _this setPos [(1764.92)-_centerX+_centerSpawnX, (5761.37)-_centerY+_centerSpawnY, 0];
};
_vehicle_25 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1760.1, 5745.38, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 106.448;
    _this setPos [(1760.1)-_centerX+_centerSpawnX, (5745.38)-_centerY+_centerSpawnY, 0];
};
_vehicle_26 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1761.68, 5750.68, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 106.448;
    _this setPos [(1761.68)-_centerX+_centerSpawnX, (5750.68)-_centerY+_centerSpawnY, 0];
};
_vehicle_27 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1763.31, 5756.21, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 106.448;
    _this setPos [(1763.31)-_centerX+_centerSpawnX, (5756.21)-_centerY+_centerSpawnY, 0];
};
_vehicle_28 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1766.58, 5766.69, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 107.452;
    _this setPos [(1766.58)-_centerX+_centerSpawnX, (5766.69)-_centerY+_centerSpawnY, 0];
};
_vehicle_29 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1776.62, 5763.6, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 22.9429;
    _this setPos [(1776.62)-_centerX+_centerSpawnX, (5763.6)-_centerY+_centerSpawnY, 0];
};
_vehicle_30 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [1769.28, 5745.51, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_30 = _this;
    _this setDir 1.205;
    _this setPos [(1769.28)-_centerX+_centerSpawnX, (5745.51)-_centerY+_centerSpawnY, 0];
};
_vehicle_31 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PortableLight_double_F", [1792.32, 5745.3, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_31 = _this;
    _this setDir 249.624;
    _this setPos [(1792.32)-_centerX+_centerSpawnX, (5745.3)-_centerY+_centerSpawnY, 0];
};
_vehicle_32 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [1764.16, 5751.67, 7.15256E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_32 = _this;
    _this setDir 278.071;
    _this setPos [(1764.16)-_centerX+_centerSpawnX, (5751.67)-_centerY+_centerSpawnY, 7.15256E-06];
};
_vehicle_33 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PowerGenerator_F", [1791.29, 5748.3, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 331.633;
    _this setPos [(1791.29)-_centerX+_centerSpawnX, (5748.3)-_centerY+_centerSpawnY, 0];
};
_vehicle_34 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_uaz_open_vv", [1769.69, 5757.13, 0.00992441], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 127.641;
    _this setPos [(1769.69)-_centerX+_centerSpawnX, (5757.13)-_centerY+_centerSpawnY, 0.00326252];
};
_vehicle_35 = objNull;
if (true) then
{
    _this = createVehicle ["RHS_Ural_Open_VV_01", [1771.07, 5761.45, 0.0639491], [], 0, "CAN_COLLIDE"];
    _vehicle_35 = _this;
    _this setDir 109.738;
    _this setPos [(1771.07)-_centerX+_centerSpawnX, (5761.45)-_centerY+_centerSpawnY, 0.00505209];
};
_vehicle_36 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [1766.61, 5759.96, 2.52724E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir 359.762;
    _this setPos [(1766.61)-_centerX+_centerSpawnX, (5759.96)-_centerY+_centerSpawnY, 2.52724E-05];
};
_vehicle_37 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [1766, 5760.06, 3.43323E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir 0.0885411;
    _this setPos [(1766)-_centerX+_centerSpawnX, (5760.06)-_centerY+_centerSpawnY, 3.43323E-05];
};
_vehicle_38 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [1766.45, 5760.71, 5.48363E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_38 = _this;
    _this setDir 359.926;
    _this setPos [(1766.45)-_centerX+_centerSpawnX, (5760.71)-_centerY+_centerSpawnY, 5.48363E-05];
};
_vehicle_39 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MetalBarrel_F", [1765.46, 5757.84, 5.48363E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_39 = _this;
    _this setDir 359.939;
    _this setPos [(1765.46)-_centerX+_centerSpawnX, (5757.84)-_centerY+_centerSpawnY, 5.48363E-05];
};
_vehicle_40 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [1787.41, 5752.94, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 192.789;
    _this setPos [(1787.41)-_centerX+_centerSpawnX, (5752.94)-_centerY+_centerSpawnY, -1.43051E-06];
};
_vehicle_41 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_Flag_Russia_F", [1775.06, 5745.57, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_41 = _this;
    _this setDir 0;
    _this setPos [(1775.06)-_centerX+_centerSpawnX, (5745.57)-_centerY+_centerSpawnY, 0];
};
_vehicle_42 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [1769.32, 5744.56, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir 0;
    _this setPos [(1769.32)-_centerX+_centerSpawnX, (5744.56)-_centerY+_centerSpawnY, 0];
};
_vehicle_43 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [1777.6, 5765.18, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 197.588;
    _this setPos [(1777.6)-_centerX+_centerSpawnX, (5765.18)-_centerY+_centerSpawnY, 0];
};
_vehicle_44 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ChairPlastic_F", [1789.51, 5752.14, 1.71661E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setDir 233.632;
    _this setPos [(1789.51)-_centerX+_centerSpawnX, (5752.14)-_centerY+_centerSpawnY, 1.71661E-05];
};
_vehicle_45 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenTable_large_F", [1787.85, 5746, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 85.16;
    _this setPos [(1787.85)-_centerX+_centerSpawnX, (5746)-_centerY+_centerSpawnY, 0];
};
_vehicle_46 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Metal_wooden_rack_F", [1764.97, 5746.31, 7.67708E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 106.413;
    _this setPos [(1764.97)-_centerX+_centerSpawnX, (5746.31)-_centerY+_centerSpawnY, 7.67708E-05];
};
_vehicle_47 = objNull;
if (true) then
{
    _this = createVehicle ["Fridge_01_closed_F", [1792.38, 5746.67, 4.24385E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_47 = _this;
    _this setDir 70.9797;
    _this setPos [(1792.38)-_centerX+_centerSpawnX, (5746.67)-_centerY+_centerSpawnY, 4.24385E-05];
};
_vehicle_48 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MapBoard_F", [1782.02, 5743.38, -0.00221825], [], 0, "CAN_COLLIDE"];
    _vehicle_48 = _this;
    _this setDir 206.037;
    _this setPos [(1782.02)-_centerX+_centerSpawnX, (5743.38)-_centerY+_centerSpawnY, -0.00220346];
};
_vehicle_49 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [1787.33, 5747.58, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 247.325;
    _this setPos [(1787.33)-_centerX+_centerSpawnX, (5747.58)-_centerY+_centerSpawnY, 4.76837E-07];
};
_vehicle_50 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [1787.75, 5744.46, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 274.686;
    _this setPos [(1787.75)-_centerX+_centerSpawnX, (5744.46)-_centerY+_centerSpawnY, 0];
};
_vehicle_51 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ChairPlastic_F", [1788.31, 5754.24, 1.71661E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 123.242;
    _this setPos [(1788.31)-_centerX+_centerSpawnX, (5754.24)-_centerY+_centerSpawnY, 1.71661E-05];
};
_vehicle_52 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [1763.79, 5750.23, 7.62939E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 293.918;
    _this setPos [(1763.79)-_centerX+_centerSpawnX, (5750.23)-_centerY+_centerSpawnY, 7.62939E-06];
};
_vehicle_53 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [1787.77, 5735.85, -0.00021553], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir 18.3269;
    _this setPos [(1787.77)-_centerX+_centerSpawnX, (5735.85)-_centerY+_centerSpawnY, -0.00021553];
};
_vehicle_54 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_standard", [1783.97, 5737.07, -1.90735E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_54 = _this;
    _this setDir 24.4491;
    _this setPos [(1783.97)-_centerX+_centerSpawnX, (5737.07)-_centerY+_centerSpawnY, -1.90735E-06];
};
_vehicle_55 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Razorwire_F", [1783.36, 5728.88, -2.38419E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_55 = _this;
    _this setDir 197.02;
    _this setPos [(1783.36)-_centerX+_centerSpawnX, (5728.88)-_centerY+_centerSpawnY, 0];
};
_vehicle_56 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Razorwire_F", [1769.92, 5733, -2.38419E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir 197.02;
    _this setPos [(1769.92)-_centerX+_centerSpawnX, (5733)-_centerY+_centerSpawnY, 0];
};
_vehicle_57 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1774.2, 5731.95, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_57 = _this;
    _this setDir 205.227;
    _this setPos [(1774.2)-_centerX+_centerSpawnX, (5731.95)-_centerY+_centerSpawnY, 0];
};
_vehicle_58 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1776.39, 5731.28, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_58 = _this;
    _this setDir 193.015;
    _this setPos [(1776.39)-_centerX+_centerSpawnX, (5731.28)-_centerY+_centerSpawnY, 0];
};
_vehicle_59 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1789.26, 5737.9, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 17.3929;
    _this setPos [(1789.26)-_centerX+_centerSpawnX, (5737.9)-_centerY+_centerSpawnY, 0];
};
_vehicle_60 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1783.56, 5739.61, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_60 = _this;
    _this setDir 17.3929;
    _this setPos [(1783.56)-_centerX+_centerSpawnX, (5739.61)-_centerY+_centerSpawnY, 0];
};
_vehicle_61 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_End_F", [1785.83, 5738.8, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_61 = _this;
    _this setDir 19.1623;
    _this setPos [(1785.83)-_centerX+_centerSpawnX, (5738.8)-_centerY+_centerSpawnY, 0];
};
_vehicle_62 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_End_F", [1786.99, 5738.58, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_62 = _this;
    _this setDir 197.624;
    _this setPos [(1786.99)-_centerX+_centerSpawnX, (5738.58)-_centerY+_centerSpawnY, 0];
};
_vehicle_63 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [1776.53, 5746.37, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_63 = _this;
    _this setDir 17.7776;
    _this setPos [(1776.53)-_centerX+_centerSpawnX, (5746.37)-_centerY+_centerSpawnY, 0];
};
_vehicle_64 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [1774.41, 5747.06, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 284.513;
    _this setPos [(1774.41)-_centerX+_centerSpawnX, (5747.06)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_65 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tyre_F", [1765.93, 5756.76, -0.00426483], [], 0, "CAN_COLLIDE"];
    _vehicle_65 = _this;
    _this setDir 358.567;
    _this setPos [(1765.93)-_centerX+_centerSpawnX, (5756.76)-_centerY+_centerSpawnY, -0.00425482];
};
_vehicle_66 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tyre_F", [1765.22, 5756.75, -0.00426435], [], 0, "CAN_COLLIDE"];
    _vehicle_66 = _this;
    _this setDir 13.758;
    _this setPos [(1765.22)-_centerX+_centerSpawnX, (5756.75)-_centerY+_centerSpawnY, -0.00425434];
};
_vehicle_67 = objNull;
if (true) then
{
    _this = createVehicle ["RoadCone_F", [1770.67, 5737.37, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_67 = _this;
    _this setDir 359.996;
    _this setPos [(1770.67)-_centerX+_centerSpawnX, (5737.37)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_68 = objNull;
if (true) then
{
    _this = createVehicle ["RoadCone_F", [1769.04, 5737.99, 9.05991E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_68 = _this;
    _this setDir 359.996;
    _this setPos [(1769.04)-_centerX+_centerSpawnX, (5737.99)-_centerY+_centerSpawnY, 9.05991E-06];
};
_vehicle_69 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Workbench_01_F", [1766.02, 5754.06, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_69 = _this;
    _this setDir 291.444;
    _this setPos [(1766.02)-_centerX+_centerSpawnX, (5754.06)-_centerY+_centerSpawnY, 0];
};


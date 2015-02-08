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
  _this = createVehicle ["Land_MultiMeter_F", [4000.7195, 5623.689, -1.2397766e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setPos [1788.79, 5781.95, -0.00130081];
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
    _this = createVehicle ["Land_BagFence_Round_F", [1788.79, 5781.95, -0.00130081], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir 71.8837;
    _this setPos [(1788.79)-_centerX+_centerSpawnX, (5781.95)-_centerY+_centerSpawnY, 0];
};
_vehicle_2 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1789.15, 5784.68, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 91.9481;
    _this setPos [(1789.15)-_centerX+_centerSpawnX, (5784.68)-_centerY+_centerSpawnY, 0];
};
_vehicle_3 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1790.74, 5779.94, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 221.338;
    _this setPos [(1790.74)-_centerX+_centerSpawnX, (5779.94)-_centerY+_centerSpawnY, 0];
};
_vehicle_4 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GarbageBarrel_01_F", [1787.22, 5782.51, -0.00600624], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 347.89;
    _this setPos [(1787.22)-_centerX+_centerSpawnX, (5782.51)-_centerY+_centerSpawnY, -0.00591278];
};
_vehicle_5 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_End_F", [1789.11, 5787.14, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 267.732;
    _this setPos [(1789.11)-_centerX+_centerSpawnX, (5787.14)-_centerY+_centerSpawnY, 0];
};
_vehicle_6 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindPollen1", [1788.61, 5774.5, 0.557202], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 150.732;
    _this setPos [(1788.61)-_centerX+_centerSpawnX, (5774.5)-_centerY+_centerSpawnY, 0.472497];
};
_vehicle_7 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindPollen1", [1780.61, 5780.64, 0.501011], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 170.451;
    _this setPos [(1780.61)-_centerX+_centerSpawnX, (5780.64)-_centerY+_centerSpawnY, 0.428047];
};
_vehicle_8 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindPollen1", [1775.58, 5784.29, 0.564541], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 94.6108;
    _this setPos [(1775.58)-_centerX+_centerSpawnX, (5784.29)-_centerY+_centerSpawnY, 0.474951];
};
_vehicle_9 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_open_Curator_F", [1794.41, 5789.25, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 101.583;
    _this setPos [(1794.41)-_centerX+_centerSpawnX, (5789.25)-_centerY+_centerSpawnY, 0];
};
_vehicle_10 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_Curator_F", [1794.36, 5780.09, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 182.866;
    _this setPos [(1794.36)-_centerX+_centerSpawnX, (5780.09)-_centerY+_centerSpawnY, 0];
};
_vehicle_11 = objNull;
if (true) then
{
    _this = createVehicle ["CamoNet_BLUFOR_Curator_F", [1802.85, 5786.3, -0.371346], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 105.474;
    _this setPos [(1802.85)-_centerX+_centerSpawnX, (5786.3)-_centerY+_centerSpawnY, 0];
};
_vehicle_12 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [1794.1, 5785.94, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 342.353;
    _this setPos [(1794.1)-_centerX+_centerSpawnX, (5785.94)-_centerY+_centerSpawnY, 0];
};
_vehicle_13 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [1801.15, 5787.59, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 0;
    _this setPos [(1801.15)-_centerX+_centerSpawnX, (5787.59)-_centerY+_centerSpawnY, 0];
};
_vehicle_14 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [1795.22, 5789.8, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 0;
    _this setPos [(1795.22)-_centerX+_centerSpawnX, (5789.8)-_centerY+_centerSpawnY, 0];
};
_vehicle_15 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ClutterCutter_large_F", [1792.77, 5781.33, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 0;
    _this setPos [(1792.77)-_centerX+_centerSpawnX, (5781.33)-_centerY+_centerSpawnY, 0];
};
_vehicle_16 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1802.69, 5782.26, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 283.23;
    _this setPos [(1802.69)-_centerX+_centerSpawnX, (5782.26)-_centerY+_centerSpawnY, 0];
};
_vehicle_17 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1803.91, 5787.6, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 283.23;
    _this setPos [(1803.91)-_centerX+_centerSpawnX, (5787.6)-_centerY+_centerSpawnY, 0];
};
_vehicle_18 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1798.98, 5778.55, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 316.612;
    _this setPos [(1798.98)-_centerX+_centerSpawnX, (5778.55)-_centerY+_centerSpawnY, 0];
};
_vehicle_19 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [1798.82, 5781.8, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setDir 20.8911;
    _this setPos [(1798.82)-_centerX+_centerSpawnX, (5781.8)-_centerY+_centerSpawnY, 0];
};
_vehicle_20 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [1801.97, 5780.23, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 38.8894;
    _this setPos [(1801.97)-_centerX+_centerSpawnX, (5780.23)-_centerY+_centerSpawnY, 0];
};
_vehicle_21 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [1795.3, 5784.57, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir 274.435;
    _this setPos [(1795.3)-_centerX+_centerSpawnX, (5784.57)-_centerY+_centerSpawnY, 0];
};
_vehicle_22 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [1805.28, 5790.57, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_22 = _this;
    _this setDir 38.8894;
    _this setPos [(1805.28)-_centerX+_centerSpawnX, (5790.57)-_centerY+_centerSpawnY, 0];
};
_vehicle_23 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [1802.68, 5791.53, 2.57492E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 83.6325;
    _this setPos [(1802.68)-_centerX+_centerSpawnX, (5791.53)-_centerY+_centerSpawnY, 2.57492E-05];
};
_vehicle_24 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [1802.45, 5790.16, -1.85966E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 98.8611;
    _this setPos [(1802.45)-_centerX+_centerSpawnX, (5790.16)-_centerY+_centerSpawnY, -1.85966E-05];
};
_vehicle_25 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_MilBoxes_F", [1802.11, 5786.98, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 280.748;
    _this setPos [(1802.11)-_centerX+_centerSpawnX, (5786.98)-_centerY+_centerSpawnY, 0];
};
_vehicle_26 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1796.39, 5778.34, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 179.266;
    _this setPos [(1796.39)-_centerX+_centerSpawnX, (5778.34)-_centerY+_centerSpawnY, 0];
};
_vehicle_27 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1793.38, 5778.65, -0.000999928], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 196.364;
    _this setPos [(1793.38)-_centerX+_centerSpawnX, (5778.65)-_centerY+_centerSpawnY, 0];
};
_vehicle_28 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sacks_heap_F", [1799.78, 5777.4, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 0;
    _this setPos [(1799.78)-_centerX+_centerSpawnX, (5777.4)-_centerY+_centerSpawnY, 0];
};
_vehicle_29 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [1797.57, 5787.55, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 242.156;
    _this setPos [(1797.57)-_centerX+_centerSpawnX, (5787.55)-_centerY+_centerSpawnY, -4.76837E-07];
};
_vehicle_30 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [1796.37, 5784.81, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_30 = _this;
    _this setDir 343.572;
    _this setPos [(1796.37)-_centerX+_centerSpawnX, (5784.81)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_31 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [1794.49, 5784.25, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_31 = _this;
    _this setDir 343.457;
    _this setPos [(1794.49)-_centerX+_centerSpawnX, (5784.25)-_centerY+_centerSpawnY, -1.43051E-06];
};
_vehicle_32 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [1794.03, 5787.68, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_32 = _this;
    _this setDir 359.99;
    _this setPos [(1794.03)-_centerX+_centerSpawnX, (5787.68)-_centerY+_centerSpawnY, 0];
};
_vehicle_33 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PressureWasher_01_F", [1800.49, 5791.54, -4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 9.46914;
    _this setPos [(1800.49)-_centerX+_centerSpawnX, (5791.54)-_centerY+_centerSpawnY, -4.76837E-07];
};
_vehicle_34 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sack_F", [1802.07, 5785.45, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 0;
    _this setPos [(1802.07)-_centerX+_centerSpawnX, (5785.45)-_centerY+_centerSpawnY, 0];
};
_vehicle_35 = objNull;
if (true) then
{
    _this = createVehicle ["Weapon_hgun_Rook40_F", [1793.55, 5787.64, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_35 = _this;
    _this setDir 216.038;
    _this setPos [(1793.55)-_centerX+_centerSpawnX, (5787.64)-_centerY+_centerSpawnY, 0.813006];
};
_vehicle_36 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Portable_generator_F", [1797.26, 5780.75, -0.000828743], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir 267.967;
    _this setPos [(1797.26)-_centerX+_centerSpawnX, (5780.75)-_centerY+_centerSpawnY, -0.000825882];
};
_vehicle_37 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V1_F", [1792.78, 5786.74, 0.00312328], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir 197.825;
    _this setPos [(1792.78)-_centerX+_centerSpawnX, (5786.74)-_centerY+_centerSpawnY, 0.00312328];
};
_vehicle_38 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1795.23, 5787.02, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_38 = _this;
    _this setDir 114.961;
    _this setPos [(1795.23)-_centerX+_centerSpawnX, (5787.02)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_39 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1795.12, 5788.52, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_39 = _this;
    _this setDir 27.388;
    _this setPos [(1795.12)-_centerX+_centerSpawnX, (5788.52)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_40 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1796.62, 5784.16, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 140.157;
    _this setPos [(1796.62)-_centerX+_centerSpawnX, (5784.16)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_41 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1798.24, 5788.2, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_41 = _this;
    _this setDir 123.672;
    _this setPos [(1798.24)-_centerX+_centerSpawnX, (5788.2)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_42 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1796.1, 5785.46, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir 347.723;
    _this setPos [(1796.1)-_centerX+_centerSpawnX, (5785.46)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_43 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1795.23, 5783.74, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 166.736;
    _this setPos [(1795.23)-_centerX+_centerSpawnX, (5783.74)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_44 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1794.61, 5784.97, 2.0504E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setDir 305.913;
    _this setPos [(1794.61)-_centerX+_centerSpawnX, (5784.97)-_centerY+_centerSpawnY, 2.00272E-05];
};
_vehicle_45 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1794.04, 5788.86, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 0.143866;
    _this setPos [(1794.04)-_centerX+_centerSpawnX, (5788.86)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_46 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1794.06, 5786.54, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 173.952;
    _this setPos [(1794.06)-_centerX+_centerSpawnX, (5786.54)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_47 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1792.64, 5788.36, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_47 = _this;
    _this setDir 309.465;
    _this setPos [(1792.64)-_centerX+_centerSpawnX, (5788.36)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_48 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", [1794.53, 5791.68, -9.20296E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_48 = _this;
    _this setDir 0.0431928;
    _this setPos [(1794.53)-_centerX+_centerSpawnX, (5791.68)-_centerY+_centerSpawnY, -9.20296E-05];
};
_vehicle_49 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodenLog_F", [1793.23, 5783.76, 1.43051E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 359.829;
    _this setPos [(1793.23)-_centerX+_centerSpawnX, (5783.76)-_centerY+_centerSpawnY, 1.43051E-05];
};
_vehicle_50 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_01_khaki_F", [1800.8, 5781.9, 2.67029E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 145.732;
    _this setPos [(1800.8)-_centerX+_centerSpawnX, (5781.9)-_centerY+_centerSpawnY, 2.67029E-05];
};
_vehicle_51 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasTank_01_khaki_F", [1801.14, 5782.32, 2.76566E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 30.6926;
    _this setPos [(1801.14)-_centerX+_centerSpawnX, (5782.32)-_centerY+_centerSpawnY, 2.76566E-05];
};
_vehicle_52 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [1797.09, 5786.29, -0.00113344], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 359.884;
    _this setPos [(1797.09)-_centerX+_centerSpawnX, (5786.29)-_centerY+_centerSpawnY, -0.000319004];
};
_vehicle_53 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [1792.83, 5787.64, -0.00112915], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir 359.899;
    _this setPos [(1792.83)-_centerX+_centerSpawnX, (5787.64)-_centerY+_centerSpawnY, -0.000314713];
};
_vehicle_54 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindPollen1", [1780.32, 5793.01, 0.55234], [], 0, "CAN_COLLIDE"];
    _vehicle_54 = _this;
    _this setDir 345.495;
    _this setPos [(1780.32)-_centerX+_centerSpawnX, (5793.01)-_centerY+_centerSpawnY, 0.526865];
};
_vehicle_55 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindGrass1", [1783.85, 5799.4, 0.191715], [], 0, "CAN_COLLIDE"];
    _vehicle_55 = _this;
    _this setDir 7.75095;
    _this setPos [(1783.85)-_centerX+_centerSpawnX, (5799.4)-_centerY+_centerSpawnY, 0.432199];
};
_vehicle_56 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Cargo_HQ_V1_F", [1801.28, 5801.42, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_56 = _this;
    _this setDir 16.1735;
    _this setPos [(1801.28)-_centerX+_centerSpawnX, (5801.42)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_57 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Loudspeakers_F", [1807.22, 5795.61, 0.0183716], [], 0, "CAN_COLLIDE"];
    _vehicle_57 = _this;
    _this setDir 0;
    _this setPos [(1807.22)-_centerX+_centerSpawnX, (5795.61)-_centerY+_centerSpawnY, 1.35834];
};
_vehicle_58 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ScrapHeap_1_F", [1811.97, 5799.33, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_58 = _this;
    _this setDir 11.7052;
    _this setPos [(1811.97)-_centerX+_centerSpawnX, (5799.33)-_centerY+_centerSpawnY, 0];
};
_vehicle_59 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_Flag_Russia_F", [1794.44, 5797.93, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_59 = _this;
    _this setDir 0;
    _this setPos [(1794.44)-_centerX+_centerSpawnX, (5797.93)-_centerY+_centerSpawnY, 1.42494];
};
_vehicle_60 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1808.92, 5806.19, -5.72205E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_60 = _this;
    _this setDir 196.556;
    _this setPos [(1808.92)-_centerX+_centerSpawnX, (5806.19)-_centerY+_centerSpawnY, -5.72205E-06];
};
_vehicle_61 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1794.67, 5794.84, 8.58307E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_61 = _this;
    _this setDir 17.7724;
    _this setPos [(1794.67)-_centerX+_centerSpawnX, (5794.84)-_centerY+_centerSpawnY, 8.58307E-06];
};
_vehicle_62 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1800.91, 5794.32, -7.62939E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_62 = _this;
    _this setDir 16.1707;
    _this setPos [(1800.91)-_centerX+_centerSpawnX, (5794.32)-_centerY+_centerSpawnY, -7.62939E-06];
};
_vehicle_63 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodPile_large_F", [1811.66, 5805.06, 0.0232067], [], 0, "CAN_COLLIDE"];
    _vehicle_63 = _this;
    _this setDir 350.433;
    _this setPos [(1811.66)-_centerX+_centerSpawnX, (5805.06)-_centerY+_centerSpawnY, 0];
};
_vehicle_64 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Garbage_line_F", [1793.45, 5791.66, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_64 = _this;
    _this setDir 274.435;
    _this setPos [(1793.45)-_centerX+_centerSpawnX, (5791.66)-_centerY+_centerSpawnY, 0];
};
_vehicle_65 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [1794.16, 5798.51, 1.90735E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_65 = _this;
    _this setDir 106.229;
    _this setPos [(1794.16)-_centerX+_centerSpawnX, (5798.51)-_centerY+_centerSpawnY, 1.90735E-06];
};
_vehicle_66 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [1796.67, 5807.03, 5.72205E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_66 = _this;
    _this setDir 106.229;
    _this setPos [(1796.67)-_centerX+_centerSpawnX, (5807.03)-_centerY+_centerSpawnY, 5.72205E-06];
};
_vehicle_67 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [1810.3, 5805.64, 3.33786E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_67 = _this;
    _this setDir 99.7773;
    _this setPos [(1810.3)-_centerX+_centerSpawnX, (5805.64)-_centerY+_centerSpawnY, 3.33786E-06];
};
_vehicle_68 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_3_F", [1807.54, 5795.06, 5.24521E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_68 = _this;
    _this setDir 106.884;
    _this setPos [(1807.54)-_centerX+_centerSpawnX, (5795.06)-_centerY+_centerSpawnY, 5.24521E-06];
};
_vehicle_69 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterTank_F", [1802.46, 5808.07, -4.29153E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_69 = _this;
    _this setDir 63.8119;
    _this setPos [(1802.46)-_centerX+_centerSpawnX, (5808.07)-_centerY+_centerSpawnY, -4.76837E-06];
};
_vehicle_70 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallets_F", [1807.11, 5808.4, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_70 = _this;
    _this setDir 0;
    _this setPos [(1807.11)-_centerX+_centerSpawnX, (5808.4)-_centerY+_centerSpawnY, 0];
};
_vehicle_71 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_F", [1808.91, 5810.74, -0.0250001], [], 0, "CAN_COLLIDE"];
    _vehicle_71 = _this;
    _this setDir 316.75;
    _this setPos [(1808.91)-_centerX+_centerSpawnX, (5810.74)-_centerY+_centerSpawnY, -0.0250001];
};
_vehicle_72 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_1_F", [1810.13, 5800.98, 1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_72 = _this;
    _this setDir 193.59;
    _this setPos [(1810.13)-_centerX+_centerSpawnX, (5800.98)-_centerY+_centerSpawnY, 1.43051E-06];
};
_vehicle_73 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_1_F", [1808.91, 5799.89, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_73 = _this;
    _this setDir 109.194;
    _this setPos [(1808.91)-_centerX+_centerSpawnX, (5799.89)-_centerY+_centerSpawnY, -1.43051E-06];
};
_vehicle_74 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_1_F", [1808.57, 5798.8, 2.86102E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_74 = _this;
    _this setDir 105.162;
    _this setPos [(1808.57)-_centerX+_centerSpawnX, (5798.8)-_centerY+_centerSpawnY, 2.86102E-06];
};
_vehicle_75 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_open_full_F", [1797.45, 5792.25, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_75 = _this;
    _this setDir 112.908;
    _this setPos [(1797.45)-_centerX+_centerSpawnX, (5792.25)-_centerY+_centerSpawnY, 0];
};
_vehicle_76 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_open_full_F", [1795.75, 5792.8, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_76 = _this;
    _this setDir 230.809;
    _this setPos [(1795.75)-_centerX+_centerSpawnX, (5792.8)-_centerY+_centerSpawnY, 0];
};
_vehicle_77 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PaperBox_closed_F", [1793.99, 5793.12, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_77 = _this;
    _this setDir 0;
    _this setPos [(1793.99)-_centerX+_centerSpawnX, (5793.12)-_centerY+_centerSpawnY, 0];
};
_vehicle_78 = objNull;
if (true) then
{
    _this = createVehicle ["Item_MineDetector", [1794.25, 5792.68, -0.000115395], [], 0, "CAN_COLLIDE"];
    _vehicle_78 = _this;
    _this setDir 242.667;
    _this setPos [(1794.25)-_centerX+_centerSpawnX, (5792.68)-_centerY+_centerSpawnY, 1.23464];
};
_vehicle_79 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WheelCart_F", [1810.2, 5808.3, 0.000834465], [], 0, "CAN_COLLIDE"];
    _vehicle_79 = _this;
    _this setDir 359.584;
    _this setPos [(1810.2)-_centerX+_centerSpawnX, (5808.3)-_centerY+_centerSpawnY, 0.000854969];
};
_vehicle_80 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterBarrel_F", [1793.51, 5795.13, -0.00878572], [], 0, "CAN_COLLIDE"];
    _vehicle_80 = _this;
    _this setDir 357.808;
    _this setPos [(1793.51)-_centerX+_centerSpawnX, (5795.13)-_centerY+_centerSpawnY, -0.00857353];
};
_vehicle_81 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bench_F", [1792.5, 5798.97, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_81 = _this;
    _this setDir 14.4575;
    _this setPos [(1792.5)-_centerX+_centerSpawnX, (5798.97)-_centerY+_centerSpawnY, 0];
};
_vehicle_82 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Pallet_vertical_F", [1806.46, 5808.98, -0.0307384], [], 0, "CAN_COLLIDE"];
    _vehicle_82 = _this;
    _this setDir 206.89;
    _this setPos [(1806.46)-_centerX+_centerSpawnX, (5808.98)-_centerY+_centerSpawnY, 0.0502095];
};
_vehicle_83 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Portable_generator_F", [1794.07, 5803.67, -0.000785351], [], 0, "CAN_COLLIDE"];
    _vehicle_83 = _this;
    _this setDir 326.901;
    _this setPos [(1794.07)-_centerX+_centerSpawnX, (5803.67)-_centerY+_centerSpawnY, -0.00078249];
};
_vehicle_84 = objNull;
if (true) then
{
    _this = createVehicle ["Land_PlasticCase_01_medium_F", [1796.21, 5806.12, -0.0086174], [], 0, "CAN_COLLIDE"];
    _vehicle_84 = _this;
    _this setDir 1.34932;
    _this setPos [(1796.21)-_centerX+_centerSpawnX, (5806.12)-_centerY+_centerSpawnY, 1.51134];
};
_vehicle_85 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [1800.23, 5793.07, -0.00113583], [], 0, "CAN_COLLIDE"];
    _vehicle_85 = _this;
    _this setDir 359.98;
    _this setPos [(1800.23)-_centerX+_centerSpawnX, (5793.07)-_centerY+_centerSpawnY, -0.000321388];
};
_vehicle_86 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Camping_Light_F", [1793.07, 5792.2, -0.00112915], [], 0, "CAN_COLLIDE"];
    _vehicle_86 = _this;
    _this setDir 359.903;
    _this setPos [(1793.07)-_centerX+_centerSpawnX, (5792.2)-_centerY+_centerSpawnY, -0.000314713];
};
_vehicle_87 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sink_F", [1792.29, 5796.9, -0.0250034], [], 0, "CAN_COLLIDE"];
    _vehicle_87 = _this;
    _this setDir 277.886;
    _this setPos [(1792.29)-_centerX+_centerSpawnX, (5796.9)-_centerY+_centerSpawnY, -0.0250034];
};

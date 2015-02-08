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
  _this = createVehicle ["Land_MultiMeter_F", [1797.39, 5802.25, -0.00672007], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setPos [1797.39, 5802.25, -0.00672007];
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
    _this = createVehicle ["Land_BagFence_Long_F", [1803.17, 2024.72, -0.173188], [], 0, "CAN_COLLIDE"];
    _vehicle_1 = _this;
    _this setDir 90.2492;
    _this setPos [(1803.17)-_centerX+_centerSpawnX, (2024.72)-_centerY+_centerSpawnY, 5.76085];
};
_vehicle_2 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Short_F", [1801.17, 5791.53, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_2 = _this;
    _this setDir 5.18349;
    _this setPos [(1801.17)-_centerX+_centerSpawnX, (5791.53)-_centerY+_centerSpawnY, 0.0010004];
};
_vehicle_3 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1791.49, 5802.38, -1.43051E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_3 = _this;
    _this setDir 104.53;
    _this setPos [(1791.49)-_centerX+_centerSpawnX, (5802.38)-_centerY+_centerSpawnY, -1.90735E-06];
};
_vehicle_4 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1791.5, 5796.53, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_4 = _this;
    _this setDir 41.4033;
    _this setPos [(1791.5)-_centerX+_centerSpawnX, (5796.53)-_centerY+_centerSpawnY, 0];
};
_vehicle_5 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagBunker_Small_F", [1799.25, 5793.73, -6.67572E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_5 = _this;
    _this setDir 21.9706;
    _this setPos [(1799.25)-_centerX+_centerSpawnX, (5793.73)-_centerY+_centerSpawnY, -6.67572E-06];
};
_vehicle_6 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_uaz_open_MSV_01", [1795.72, 5797.41, 0.00992393], [], 0, "CAN_COLLIDE"];
    _vehicle_6 = _this;
    _this setDir 17.9822;
    _this setPos [(1795.72)-_centerX+_centerSpawnX, (5797.41)-_centerY+_centerSpawnY, 0.00324345];
};
_vehicle_7 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium4_F", [1807.8, 5798.26, -0.00731754], [], 0, "CAN_COLLIDE"];
    _vehicle_7 = _this;
    _this setDir 105.22;
    _this setPos [(1807.8)-_centerX+_centerSpawnX, (5798.26)-_centerY+_centerSpawnY, -0.00731754];
};
_vehicle_8 = objNull;
if (true) then
{
    _this = createVehicle ["rhs_Flag_Russia_F", [1796.86, 5795.31, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_8 = _this;
    _this setDir 8.42964;
    _this setPos [(1796.86)-_centerX+_centerSpawnX, (5795.31)-_centerY+_centerSpawnY, 0];
};
_vehicle_9 = objNull;
if (true) then
{
    _this = createVehicle ["Land_HBarrier_5_F", [1800.68, 5809.63, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_9 = _this;
    _this setDir 11.8997;
    _this setPos [(1800.68)-_centerX+_centerSpawnX, (5809.63)-_centerY+_centerSpawnY, 0];
};
_vehicle_10 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1796.03, 5794.32, -1.90735E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_10 = _this;
    _this setDir 22.254;
    _this setPos [(1796.03)-_centerX+_centerSpawnX, (5794.32)-_centerY+_centerSpawnY, -1.90735E-06];
};
_vehicle_11 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1803.4, 5802.9, -4.29153E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_11 = _this;
    _this setDir 13.9071;
    _this setPos [(1803.4)-_centerX+_centerSpawnX, (5802.9)-_centerY+_centerSpawnY, -4.29153E-06];
};
_vehicle_12 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1799.84, 5804.17, -6.19888E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_12 = _this;
    _this setDir 10.9327;
    _this setPos [(1799.84)-_centerX+_centerSpawnX, (5804.17)-_centerY+_centerSpawnY, -6.19888E-06];
};
_vehicle_13 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1809.08, 5802.76, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_13 = _this;
    _this setDir 108.704;
    _this setPos [(1809.08)-_centerX+_centerSpawnX, (5802.76)-_centerY+_centerSpawnY, 0];
};
_vehicle_14 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrierMedium_F", [1801.58, 5803.32, 7.62939E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_14 = _this;
    _this setDir 20.57;
    _this setPos [(1801.58)-_centerX+_centerSpawnX, (5803.32)-_centerY+_centerSpawnY, 7.62939E-06];
};
_vehicle_15 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Round_F", [1798.31, 5810.03, 9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_15 = _this;
    _this setDir 163.916;
    _this setPos [(1798.31)-_centerX+_centerSpawnX, (5810.03)-_centerY+_centerSpawnY, 0.00130177];
};
_vehicle_16 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Campfire_F", [1803.72, 5795.81, 0.0971732], [], 0, "CAN_COLLIDE"];
    _vehicle_16 = _this;
    _this setDir 0;
    _this setPos [(1803.72)-_centerX+_centerSpawnX, (5795.81)-_centerY+_centerSpawnY, 0.0671744];
};
_vehicle_17 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1805.86, 5793.46, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_17 = _this;
    _this setDir 131.708;
    _this setPos [(1805.86)-_centerX+_centerSpawnX, (5793.46)-_centerY+_centerSpawnY, 0.0010004];
};
_vehicle_18 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1793.8, 5795.44, -3.33786E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_18 = _this;
    _this setDir 204.334;
    _this setPos [(1793.8)-_centerX+_centerSpawnX, (5795.44)-_centerY+_centerSpawnY, 0.00099659];
};
_vehicle_19 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Long_F", [1796.42, 5808.42, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_19 = _this;
    _this setDir 121.747;
    _this setPos [(1796.42)-_centerX+_centerSpawnX, (5808.42)-_centerY+_centerSpawnY, 0.000999928];
};
_vehicle_20 = objNull;
if (true) then
{
    _this = createVehicle ["Land_MapBoard_F", [1803.34, 5801.64, -0.0022192], [], 0, "CAN_COLLIDE"];
    _vehicle_20 = _this;
    _this setDir 0.121058;
    _this setPos [(1803.34)-_centerX+_centerSpawnX, (5801.64)-_centerY+_centerSpawnY, -0.00220394];
};
_vehicle_21 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WoodPile_F", [1801.45, 5792.69, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_21 = _this;
    _this setDir 27.8408;
    _this setPos [(1801.45)-_centerX+_centerSpawnX, (5792.69)-_centerY+_centerSpawnY, 0];
};
_vehicle_22 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sacks_heap_F", [1792.42, 5803.49, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_22 = _this;
    _this setDir 305.357;
    _this setPos [(1792.42)-_centerX+_centerSpawnX, (5803.49)-_centerY+_centerSpawnY, 0];
};
_vehicle_23 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrier_F", [1799.63, 5808.63, -7.15256E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_23 = _this;
    _this setDir 104.443;
    _this setPos [(1799.63)-_centerX+_centerSpawnX, (5808.63)-_centerY+_centerSpawnY, -7.15256E-06];
};
_vehicle_24 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CncBarrier_F", [1804.1, 5806.67, -9.53674E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_24 = _this;
    _this setDir 113.279;
    _this setPos [(1804.1)-_centerX+_centerSpawnX, (5806.67)-_centerY+_centerSpawnY, -9.53674E-07];
};
_vehicle_25 = objNull;
if (true) then
{
    _this = createVehicle ["Box_East_Grenades_F", [1801.64, 5807.76, -2573.17], [], 0, "CAN_COLLIDE"];
    _vehicle_25 = _this;
    _this setDir 41.1907;
    _this setPos [(1801.64)-_centerX+_centerSpawnX, (5807.76)-_centerY+_centerSpawnY, -2573.16];
};
_vehicle_26 = objNull;
if (true) then
{
    _this = createVehicle ["Box_East_AmmoOrd_F", [1803.09, 5806.96, -2573.8], [], 0, "CAN_COLLIDE"];
    _vehicle_26 = _this;
    _this setDir 32.3673;
    _this setPos [(1803.09)-_centerX+_centerSpawnX, (5806.96)-_centerY+_centerSpawnY, -2573.8];
};
_vehicle_27 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingTable_F", [1803.32, 5799.89, 7.10487E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_27 = _this;
    _this setDir 180.26;
    _this setPos [(1803.32)-_centerX+_centerSpawnX, (5799.89)-_centerY+_centerSpawnY, 7.10487E-05];
};
_vehicle_28 = objNull;
if (true) then
{
    _this = createVehicle ["Land_WaterBarrel_F", [1801.38, 5801.94, -0.0249939], [], 0, "CAN_COLLIDE"];
    _vehicle_28 = _this;
    _this setDir 359.37;
    _this setPos [(1801.38)-_centerX+_centerSpawnX, (5801.94)-_centerY+_centerSpawnY, -0.0249944];
};
_vehicle_29 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Short_F", [1806.36, 5808.26, 4.76837E-07], [], 0, "CAN_COLLIDE"];
    _vehicle_29 = _this;
    _this setDir 193.058;
    _this setPos [(1806.36)-_centerX+_centerSpawnX, (5808.26)-_centerY+_centerSpawnY, 0.0010004];
};
_vehicle_30 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_Corner_F", [1808.23, 5807.87, 3.8147E-06], [], 0, "CAN_COLLIDE"];
    _vehicle_30 = _this;
    _this setDir 10.7949;
    _this setPos [(1808.23)-_centerX+_centerSpawnX, (5807.87)-_centerY+_centerSpawnY, 0.00100374];
};
_vehicle_31 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sleeping_bag_F", [1792.55, 5798.8, 0.0257034], [], 0, "CAN_COLLIDE"];
    _vehicle_31 = _this;
    _this setDir 252.891;
    _this setPos [(1792.55)-_centerX+_centerSpawnX, (5798.8)-_centerY+_centerSpawnY, 0.0257034];
};
_vehicle_32 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Sleeping_bag_F", [1793.07, 5801.1, 0], [], 0, "CAN_COLLIDE"];
    _vehicle_32 = _this;
    _this setDir 296.098;
    _this setPos [(1793.07)-_centerX+_centerSpawnX, (5801.1)-_centerY+_centerSpawnY, 0];
};
_vehicle_33 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BagFence_End_F", [1792.72, 5796.11, -1.09673E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_33 = _this;
    _this setDir 204.839;
    _this setPos [(1792.72)-_centerX+_centerSpawnX, (5796.11)-_centerY+_centerSpawnY, 0.00098896];
};
_vehicle_34 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1801.41, 5799.71, 2.09808E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_34 = _this;
    _this setDir 246.917;
    _this setPos [(1801.41)-_centerX+_centerSpawnX, (5799.71)-_centerY+_centerSpawnY, 2.0504E-05];
};
_vehicle_35 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CampingChair_V2_F", [1803.98, 5798.85, 2.14577E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_35 = _this;
    _this setDir 171.18;
    _this setPos [(1803.98)-_centerX+_centerSpawnX, (5798.85)-_centerY+_centerSpawnY, 2.09808E-05];
};
_vehicle_36 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelWater_F", [1802.22, 5801.97, 0.000107765], [], 0, "CAN_COLLIDE"];
    _vehicle_36 = _this;
    _this setDir 0.582578;
    _this setPos [(1802.22)-_centerX+_centerSpawnX, (5801.97)-_centerY+_centerSpawnY, 0.000108242];
};
_vehicle_37 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelTrash_grey_F", [1798.59, 5803.12, 5.91278E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_37 = _this;
    _this setDir 354.2;
    _this setPos [(1798.59)-_centerX+_centerSpawnX, (5803.12)-_centerY+_centerSpawnY, 5.91278E-05];
};
_vehicle_38 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BarrelSand_grey_F", [1800.57, 5802.56, -0.0249548], [], 0, "CAN_COLLIDE"];
    _vehicle_38 = _this;
    _this setDir 346.931;
    _this setPos [(1800.57)-_centerX+_centerSpawnX, (5802.56)-_centerY+_centerSpawnY, -0.0249548];
};
_vehicle_39 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Shovel_F", [1800.33, 5801.7, 0.0243449], [], 0, "CAN_COLLIDE"];
    _vehicle_39 = _this;
    _this setDir 128.671;
    _this setPos [(1800.33)-_centerX+_centerSpawnX, (5801.7)-_centerY+_centerSpawnY, 0.0244694];
};
_vehicle_40 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CanisterFuel_F", [1797.41, 5795.71, 6.05583E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_40 = _this;
    _this setDir 248.235;
    _this setPos [(1797.41)-_centerX+_centerSpawnX, (5795.71)-_centerY+_centerSpawnY, 6.05583E-05];
};
_vehicle_41 = objNull;
if (true) then
{
    _this = createVehicle ["Land_CanisterFuel_F", [1797.25, 5795.42, 5.29289E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_41 = _this;
    _this setDir 214.395;
    _this setPos [(1797.25)-_centerX+_centerSpawnX, (5795.42)-_centerY+_centerSpawnY, 5.29289E-05];
};
_vehicle_42 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Bucket_F", [1800.59, 5802.01, 5.38826E-05], [], 0, "CAN_COLLIDE"];
    _vehicle_42 = _this;
    _this setDir 0.0287647;
    _this setPos [(1800.59)-_centerX+_centerSpawnX, (5802.01)-_centerY+_centerSpawnY, 2];
};
_vehicle_43 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Ammobox_rounds_F", [1802.58, 5792.53, -0.000164032], [], 0, "CAN_COLLIDE"];
    _vehicle_43 = _this;
    _this setDir 243.287;
    _this setPos [(1802.58)-_centerX+_centerSpawnX, (5792.53)-_centerY+_centerSpawnY, -0.000164032];
};
_vehicle_44 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Ammobox_rounds_F", [1802.57, 5792.88, -0.000163555], [], 0, "CAN_COLLIDE"];
    _vehicle_44 = _this;
    _this setDir 177.484;
    _this setPos [(1802.57)-_centerX+_centerSpawnX, (5792.88)-_centerY+_centerSpawnY, -0.000163555];
};
_vehicle_45 = objNull;
if (true) then
{
    _this = createVehicle ["Land_GasCooker_F", [1804.09, 5799.8, -0.0499024], [], 0, "CAN_COLLIDE"];
    _vehicle_45 = _this;
    _this setDir 181.883;
    _this setPos [(1804.09)-_centerX+_centerSpawnX, (5799.8)-_centerY+_centerSpawnY, 0.763215];
};
_vehicle_46 = objNull;
if (true) then
{
    _this = createVehicle ["Land_FMradio_F", [1803.55, 5800.02, -0.0498824], [], 0, "CAN_COLLIDE"];
    _vehicle_46 = _this;
    _this setDir 144.56;
    _this setPos [(1803.55)-_centerX+_centerSpawnX, (5800.02)-_centerY+_centerSpawnY, 0.763237];
};
_vehicle_47 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BottlePlastic_V2_F", [1803.13, 5799.71, -0.0489998], [], 0, "CAN_COLLIDE"];
    _vehicle_47 = _this;
    _this setDir 207.503;
    _this setPos [(1803.13)-_centerX+_centerSpawnX, (5799.71)-_centerY+_centerSpawnY, 0.764132];
};
_vehicle_48 = objNull;
if (true) then
{
    _this = createVehicle ["Land_BottlePlastic_V1_F", [1803.03, 5799.87, -0.0499921], [], 0, "CAN_COLLIDE"];
    _vehicle_48 = _this;
    _this setDir 268.233;
    _this setPos [(1803.03)-_centerX+_centerSpawnX, (5799.87)-_centerY+_centerSpawnY, 0.763082];
};
_vehicle_49 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tableware_01_cup_F", [1802.51, 5799.85, -0.0498691], [], 0, "CAN_COLLIDE"];
    _vehicle_49 = _this;
    _this setDir 15.8232;
    _this setPos [(1802.51)-_centerX+_centerSpawnX, (5799.85)-_centerY+_centerSpawnY, 0.763139];
};
_vehicle_50 = objNull;
if (true) then
{
    _this = createVehicle ["Land_Tableware_01_cup_F", [1803.78, 5799.71, -0.0500965], [], 0, "CAN_COLLIDE"];
    _vehicle_50 = _this;
    _this setDir 77.2747;
    _this setPos [(1803.78)-_centerX+_centerSpawnX, (5799.71)-_centerY+_centerSpawnY, 0.762977];
};
_vehicle_51 = objNull;
if (true) then
{
    _this = createVehicle ["Land_ToiletBox_F", [1799.39, 5802.25, -0.00672007], [], 0, "CAN_COLLIDE"];
    _vehicle_51 = _this;
    _this setDir 23.2403;
    _this setPos [(1799.39)-_centerX+_centerSpawnX, (5802.25)-_centerY+_centerSpawnY, -0.00615978];
};
_vehicle_52 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindPollen1", [1807.23, 5797.59, 0.557447], [], 0, "CAN_COLLIDE"];
    _vehicle_52 = _this;
    _this setDir 344.985;
    _this setPos [(1807.23)-_centerX+_centerSpawnX, (5797.59)-_centerY+_centerSpawnY, 0.45773];
};
_vehicle_53 = objNull;
if (true) then
{
    _this = createVehicle ["FxWindPollen1", [1803.67, 5797.46, 0.177713], [], 0, "CAN_COLLIDE"];
    _vehicle_53 = _this;
    _this setDir 118.702;
    _this setPos [(1803.67)-_centerX+_centerSpawnX, (5797.46)-_centerY+_centerSpawnY, 0.10399];
};


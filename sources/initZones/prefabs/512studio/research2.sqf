//////////////////////
// -- ADD THIS -- 1 //
//////////////////////
_centerSpawn = _this select 0;
_centerSpawnX = _centerSpawn select 0;
_centerSpawnY = _centerSpawn select 1;
/////////////////
// -- END -- 1 //
/////////////////

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4069.611, 4022.143, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [4069.611, 4022.143, -0.000319004];

///////////////////////
// -- ADD THIS --  2 //
///////////////////////`
_centerObj = getPos _currentVehicle;
_centerX = _centerObj select 0;
_centerY = _centerObj select 1;
deleteVehicle _currentVehicle;
/////////////////
// -- END -- 2 //
/////////////////

__vehiclesArray = [];
_infantryMoveSpotsArray = [];
_vehiclesMoveSpotsArray = [];

_currentVehicle = createVehicle ["Land_Razorwire_F", [4056.22, 4009.66, -2.38419E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4056.22)-_centerX+_centerSpawnX, (4009.66)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Razorwire_F", [4056.34, 4022.43, -2.38419E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4056.34)-_centerX+_centerSpawnX, (4022.43)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4061.35, 4011.92, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4061.35)-_centerX+_centerSpawnX, (4011.92)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4061.37, 4019.85, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4061.37)-_centerX+_centerSpawnX, (4019.85)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4052.08, 4020.84, -0.00130081], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 137.97;
_currentVehicle setPos [(4052.08)-_centerX+_centerSpawnX, (4020.84)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4052.58, 4015.97, -0.00130081], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.6871;
_currentVehicle setPos [(4052.58)-_centerX+_centerSpawnX, (4015.97)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4051.89, 4011.07, -0.00130081], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 44.4616;
_currentVehicle setPos [(4051.89)-_centerX+_centerSpawnX, (4011.07)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Long_F", [4055.7, 4019.81, -0.000999928], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4055.7)-_centerX+_centerSpawnX, (4019.81)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Long_F", [4056.07, 4011.94, -0.000999928], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4056.07)-_centerX+_centerSpawnX, (4011.94)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Medevac_house_V1_F", [4074.58, 4015.58, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.2077;
_currentVehicle setPos [(4074.58)-_centerX+_centerSpawnX, (4015.58)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4066.34, 4010.71, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 336.114;
_currentVehicle setPos [(4066.34)-_centerX+_centerSpawnX, (4010.71)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_LampHalogen_F", [4066.56, 4021.16, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 19.3477;
_currentVehicle setPos [(4066.56)-_centerX+_centerSpawnX, (4021.16)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4075.86, 4003.61, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4075.86)-_centerX+_centerSpawnX, (4003.61)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4075.94, 4027.77, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4075.94)-_centerX+_centerSpawnX, (4027.77)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CncBarrierMedium4_F", [4088.06, 4015.91, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 269.956;
_currentVehicle setPos [(4088.06)-_centerX+_centerSpawnX, (4015.91)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_military_green_F", [4075.26, 4021.77, 1.43051E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0.00159889;
_currentVehicle setPos [(4075.26)-_centerX+_centerSpawnX, (4021.77)-_centerY+_centerSpawnY, 9.53674E-07];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Cargo20_military_green_F", [4075.29, 4009.45, -0.0250001], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0.429354;
_currentVehicle setPos [(4075.29)-_centerX+_centerSpawnX, (4009.45)-_centerY+_centerSpawnY, -0.0250006];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["rhs_Flag_Russia_F", [4072.81, 4016.56, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4072.81)-_centerX+_centerSpawnX, (4016.56)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4087.69, 4020.41, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 246.338;
_currentVehicle setPos [(4087.69)-_centerX+_centerSpawnX, (4020.41)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4071.26, 4004.02, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 207.678;
_currentVehicle setPos [(4071.26)-_centerX+_centerSpawnX, (4004.02)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4079.32, 4015.19, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.7861;
_currentVehicle setPos [(4079.32)-_centerX+_centerSpawnX, (4015.19)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4084.66, 4025.64, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 200.273;
_currentVehicle setPos [(4084.66)-_centerX+_centerSpawnX, (4025.64)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4085.58, 4007.3, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 300.823;
_currentVehicle setPos [(4085.58)-_centerX+_centerSpawnX, (4007.3)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4066.61, 4006.61, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 244.217;
_currentVehicle setPos [(4066.61)-_centerX+_centerSpawnX, (4006.61)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4080.33, 4004.19, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 334.999;
_currentVehicle setPos [(4080.33)-_centerX+_centerSpawnX, (4004.19)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4079.28, 4020.74, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.7861;
_currentVehicle setPos [(4079.28)-_centerX+_centerSpawnX, (4020.74)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4073.31, 4019.63, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4073.31)-_centerX+_centerSpawnX, (4019.63)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4073.25, 4011.56, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4073.25)-_centerX+_centerSpawnX, (4011.56)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4064.69, 4021.02, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 300.441;
_currentVehicle setPos [(4064.69)-_centerX+_centerSpawnX, (4021.02)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_5_F", [4067.46, 4025.19, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 330.419;
_currentVehicle setPos [(4067.46)-_centerX+_centerSpawnX, (4025.19)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4080.13, 4019.46, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.7338;
_currentVehicle setPos [(4080.13)-_centerX+_centerSpawnX, (4019.46)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4080.13, 4011.91, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.7338;
_currentVehicle setPos [(4080.13)-_centerX+_centerSpawnX, (4011.91)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_SolarPanel_1_F", [4080.14, 4015.71, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.7338;
_currentVehicle setPos [(4080.14)-_centerX+_centerSpawnX, (4015.71)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ToiletBox_F", [4078.91, 4025.84, -0.0249882], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 2.29972;
_currentVehicle setPos [(4078.91)-_centerX+_centerSpawnX, (4025.84)-_centerY+_centerSpawnY, -0.0249882];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4066.71, 4017.47, -0.00130081], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 44.4616;
_currentVehicle setPos [(4066.71)-_centerX+_centerSpawnX, (4017.47)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_BagFence_Round_F", [4066.82, 4014.17, -0.00130081], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 134.086;
_currentVehicle setPos [(4066.82)-_centerX+_centerSpawnX, (4014.17)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Pallet_MilBoxes_F", [4085.67, 4011.04, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 333.144;
_currentVehicle setPos [(4085.67)-_centerX+_centerSpawnX, (4011.04)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Pallet_MilBoxes_F", [4085.93, 4019.99, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 250.462;
_currentVehicle setPos [(4085.93)-_centerX+_centerSpawnX, (4019.99)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4065.8, 4019.64, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4065.8)-_centerX+_centerSpawnX, (4019.64)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_HBarrier_1_F", [4065.78, 4011.96, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4065.78)-_centerX+_centerSpawnX, (4011.96)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_full_F", [4086.74, 4014.81, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0;
_currentVehicle setPos [(4086.74)-_centerX+_centerSpawnX, (4014.81)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PaperBox_open_empty_F", [4086.55, 4012.87, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 202.673;
_currentVehicle setPos [(4086.55)-_centerX+_centerSpawnX, (4012.87)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingTable_F", [4084.82, 4013.16, 1.43051E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 89.6991;
_currentVehicle setPos [(4084.82)-_centerX+_centerSpawnX, (4013.16)-_centerY+_centerSpawnY, 1.43051E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PressureWasher_01_F", [4079.2, 4009.03, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0.0120739;
_currentVehicle setPos [(4079.2)-_centerX+_centerSpawnX, (4009.03)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_WaterBarrel_F", [4072.3, 4017.52, 1.14441E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 270.593;
_currentVehicle setPos [(4072.3)-_centerX+_centerSpawnX, (4017.52)-_centerY+_centerSpawnY, 1.09673E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_F", [4078.54, 4022.01, 3.95775E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 268.059;
_currentVehicle setPos [(4078.54)-_centerX+_centerSpawnX, (4022.01)-_centerY+_centerSpawnY, 3.95775E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Metal_rack_Tall_F", [4078.82, 4022.81, 0.000121593], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.566;
_currentVehicle setPos [(4078.82)-_centerX+_centerSpawnX, (4022.81)-_centerY+_centerSpawnY, 0.000121593];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PlasticCase_01_large_F", [4086.44, 4016.54, -2.38419E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 48.1334;
_currentVehicle setPos [(4086.44)-_centerX+_centerSpawnX, (4016.54)-_centerY+_centerSpawnY, -2.38419E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_CampingTable_small_F", [4084.95, 4015, -3.8147E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.947;
_currentVehicle setPos [(4084.95)-_centerX+_centerSpawnX, (4015)-_centerY+_centerSpawnY, -3.8147E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ChairPlastic_F", [4083.48, 4013.05, 1.71661E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 338.807;
_currentVehicle setPos [(4083.48)-_centerX+_centerSpawnX, (4013.05)-_centerY+_centerSpawnY, 1.71661E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_ChairPlastic_F", [4084.8, 4016.91, 1.7643E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 99.7779;
_currentVehicle setPos [(4084.8)-_centerX+_centerSpawnX, (4016.91)-_centerY+_centerSpawnY, 1.7643E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Portable_generator_F", [4080.55, 4009.55, -0.000816345], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.883;
_currentVehicle setPos [(4080.55)-_centerX+_centerSpawnX, (4009.55)-_centerY+_centerSpawnY, -0.000813484];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_MetalCase_01_medium_F", [4086.58, 4017.7, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 248.982;
_currentVehicle setPos [(4086.58)-_centerX+_centerSpawnX, (4017.7)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PCSet_01_case_F", [4084.16, 4015.09, -3.8147E-06], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.476;
_currentVehicle setPos [(4084.16)-_centerX+_centerSpawnX, (4015.09)-_centerY+_centerSpawnY, -3.8147E-06];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PCSet_01_screen_F", [4084.85, 4015.86, 4.33922E-05], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 103.975;
_currentVehicle setPos [(4084.85)-_centerX+_centerSpawnX, (4015.86)-_centerY+_centerSpawnY, 4.33922E-05];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Laptop_device_F", [4084.2, 4014.31, 4.76837E-07], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 281.82;
_currentVehicle setPos [(4084.2)-_centerX+_centerSpawnX, (4014.31)-_centerY+_centerSpawnY, 4.76837E-07];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PCSet_01_keyboard_F", [4084.34, 4015.56, 0], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 0.000103706;
_currentVehicle setPos [(4084.34)-_centerX+_centerSpawnX, (4015.56)-_centerY+_centerSpawnY, 0];
_vehiclesArray = _vehiclesArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4069.611, 4022.143, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [(4069.611)-_centerX+_centerSpawnX, (4022.143)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_infantryMoveSpotsArray = _infantryMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_Camping_Light_F", [4069.793, 4008.487, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [(4069.793)-_centerX+_centerSpawnX, (4008.487)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_infantryMoveSpotsArray = _infantryMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PencilGreen_F", [4044.471, 4015.673, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 359.838;
_currentVehicle setPos [(4044.471)-_centerX+_centerSpawnX, (4015.673)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_vehiclesMoveSpotsArray = _vehiclesMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PencilGreen_F", [4059.647, 4029.876, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 280;
_currentVehicle setPos [(4059.647)-_centerX+_centerSpawnX, (4029.876)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_vehiclesMoveSpotsArray = _vehiclesMoveSpotsArray + [_currentVehicle];

_currentVehicle = createVehicle ["Land_PencilGreen_F", [4058.073, 4003.814, 5], [], 0, "CAN_COLLIDE"];
_currentVehicle setDir 250;
_currentVehicle setPos [(4058.073)-_centerX+_centerSpawnX, (4003.814)-_centerY+_centerSpawnY, -0.000319004];
_vehiclesArray = _vehiclesArray + [_currentVehicle];
_vehiclesMoveSpotsArray = _vehiclesMoveSpotsArray + [_currentVehicle];

//return array
[_vehiclesArray, _infantryMoveSpotsArray, _vehiclesMoveSpotsArray]
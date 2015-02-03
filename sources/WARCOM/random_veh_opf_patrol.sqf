//faction = "rhs_faction_msv"; faction = "rhs_faction_VDV"; faction = "rhs_faction_vvs_c"; faction = "CIV_F";
//vehicleClass = "rhs_vehclass_tank" "rhs_vehclass_car" "rhs_vehclass_ifv" "rhs_vehclass_aircraft" "rhs_vehclass_helicopter"
//hasDriver = 1;
//canFloat = 0;

_faction = _this select 0;
_vehClass = _this select 1;
_position = _this select 2;
_radius = _this select 3;

_cfgVehicles = configFile >> "CfgVehicles";
_totalentries = count _cfgVehicles;  // GO INTO CFGVEHICLES AND CHECK NUMBER OF ENTRIES
_realentries = _totalentries - 1;
_found = false;

_foundVeh = "";
while {!_found} do {
_checked_veh = _cfgVehicles select round (random _realentries);  // RANDOMLY SELECT AN ENTRY
_classname = configName _checked_veh;
if (isClass _checked_veh) then { // CHECK IF THE SELECTED ENTRY IS A CLASS

sleep 0.005;
_actual_vehclass = getText (_checked_veh >> "vehicleClass");
_actual_faction = getText (_checked_veh >> "faction");
_scope = getNumber (_checked_veh >> "scope"); // check if actually present in editor
_simulation_paracheck = getText (_checked_veh >> "simulation"); // check if not a parachute


   if (_actual_vehclass == _vehClass && _actual_faction == _faction && _scope != 0 && _simulation_paracheck != "Parachute" && _classname != "rhs_2s3_tv" && _classname != "rhs_bmp2d_msv" && _classname != "rhs_bmp2k_msv" && _classname != "RHS_Mi8mt_vdv" && _classname != "O_Heli_Transport_04_F" && _classname != "O_Heli_Transport_04_bench_F" && _classname != "O_Heli_Transport_04_ammo_F" && _classname != "O_Heli_Transport_04_box_F" && _classname != "O_Heli_Transport_04_covered_F" && _classname != "O_Heli_Transport_04_fuel_F" && _classname != "O_Heli_Transport_04_medevac_F" && _classname != "O_Heli_Transport_04_repair_F") exitWith {  

   _foundVeh = _classname;
   _found = true;
   };
  };   
};   // --- VEHICLE FOUND --> _foundVeh

// DETERMINE LA FACTION
_side = EAST; 
if(_faction=="rhs_faction_vdv") then {_side=EAST};
if(_faction=="rhs_faction_msv") then {_side=EAST};
if(_faction=="rhs_faction_vvs_c") then {_side=EAST};
if(_faction=="CIV_F") then {_side=CIVILIAN};  

_createdVehFnc = [_position,0,_foundVeh,_side] call bis_fnc_spawnvehicle;
_killcp = [] call cp_ehkilledeast;
_vehGroup = _createdVehFnc select 2;
_opf_assault = [_vehGroup] execVM "WARCOM\WARCOM_wp_opf_patrol.sqf";


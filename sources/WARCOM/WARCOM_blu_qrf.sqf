if(PlayableSide == east) then
{
    sleep (1 + (random 4));
    if (!WARCOM_qrf_ready) exitWith {};
    WARCOM_qrf_ready = false;
    _attachedUnit = _this select 0;
    _unitPos = getpos _attachedUnit;
    //hint format["%1",_attachedUnit]; sleep 3;
    aliveAllUnits = {alive _x} count allunits;

// Attack waves main

			  aliveAllUnits = {alive _x} count allunits;
			  if ((count WARCOM_zones_controled_by_BLUFOR > 0) && (aliveAllUnits < WARCOMLimitAI)) then
			  { // make sure opfor is controlling at least 1 zones
			  sleep 2;
			  
			  // find a zone where to spawn OPF wave away from player *** BEGIN
			  _found = false;
			  _randomZone = [];
			  _failSafe = 0;
				while {!_found} do {
				_randomZone = WARCOM_zones_controled_by_BLUFOR call BIS_fnc_selectRandom;
				if (_randomZone distance player > 900) then {_found=true;};
				sleep 0.2;
	//            player sidechat format["Failsafe: %1",_failsafe];
				_failSafe = _failSafe + 1;
				if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
				};
			  // find a zone *** end /////////////////////////Spawn Troops
			  aliveAllTanks = {(alive _x) && ((_x isKindOf "Tank") || (_x isKindOf "car"))} count vehicles;

			  if (aliveAllTanks<25) then
			  {
                   _randomZone = [(_randomZone select 0)+40,_randomZone select 1];

                   _returnedArray = [_randomZone, WARCOM_blu_attack_wave_type, west, 1] call SpawnRhsSquad;

                    {
                        [(_x select 0), position (_x select 0)] spawn Rhs_paradrop;
                    } forEach (_returnedArray select 1);

                    _group = (_returnedArray select 0);

                  _killcp = [] call cp_ehkilledeast;
                  _opf_assault = [_group,_unitPos] execVM "WARCOM\WARCOM_wp_qrf.sqf";
			  }
			  else
			  {
			    sleep 900;
			  };
			  sleep 900;


			  };
  };






//sleep 300;
WARCOM_qrf_ready = true;
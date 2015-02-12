_loop = true;

WARCOM_blu_attack_wave_type = "";
WARCOM_blu_attack_wave_avalaible = false;
WARCOM_blu_attack_wave_index = 0;
PREV_wave_index = -1;
aliveAllUnits = {alive _x} count allunits;

// Type of attack wave
[] spawn {

        _smallestApValue = 1000; //wow, so big

        {
            if((_x select 0) < _smallestApValue) then
            {
                _smallestApValue = (_x select 0);
            };
        } forEach BLUFOR_ASSAULT_SQUADS;
          
        waitUntil {sleep 1;WARCOM_blufor_ap>=_smallestApValue};

        if(PlayableSide == west) then
        {
            PAPABEAR sidechat "This is HQ, US Military forces just arrived on the island, we'll soon be able to push through the enemy lines";
        };

        WARCOM_blu_attack_wave_avalaible = true;

        while {true} do
        {
            _breakForEach = false;
            WARCOM_blu_attack_wave_avalaible = false;
            {
                if((((_x select 0) / WARCOM_blufor_ap) <= 1)) then
                {
                    WARCOM_blu_attack_wave_index = _forEachIndex;
                };
            } forEach BLUFOR_ASSAULT_SQUADS;
            WARCOM_blu_attack_wave_avalaible = true;
            
            if(PREV_wave_index != WARCOM_blu_attack_wave_index) then 
            {
                PREV_wave_index = WARCOM_blu_attack_wave_index;
                if(PlayableSide == west) then
                {
                    PAPABEAR sidechat ("This is HQ, we are ready to send reinforcements (level " + str WARCOM_blu_attack_wave_index + ")");
                };
            };

            WARCOM_blu_attack_wave_type = ((BLUFOR_ASSAULT_SQUADS select WARCOM_blu_attack_wave_index) select 1);

        sleep 5;
        };
	                           
};




// Attack waves main

[] spawn {
          waitUntil {sleep 6; WARCOM_blu_attack_wave_avalaible;};

              while {true} do
              {
                  aliveAllUnits = {alive _x} count allunits;
                  waitUntil {sleep (random 1); ((aliveAllUnits < WARCOMLimitAI) && WARCOM_blu_attack_wave_avalaible);};

                  _returnedArray = [];
                  if(PlayableSide == east) then
                  {
                      _found = false;
                      _randomZone = [];
                      _failSafe = 0;
                      while {!_found} do
                      {
                          _randomZone = WARCOM_zones_controled_by_BLUFOR call BIS_fnc_selectRandom;
                          if (_randomZone distance player > 900) then {_found=true;};
                          sleep 0.2;

                          _failSafe = _failSafe + 1;
                          if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
                      };

                      // find a zone *** end///// Spawn Troops
                      _randomZone = [(_randomZone select 0)+40,_randomZone select 1];

                      _returnedArray = [_randomZone, WARCOM_blu_attack_wave_type, west, 1] call SpawnRhsSquad;
                  }
                  else
                  {
                      _returnedArray = [WARCOM_blu_hq_pos, WARCOM_blu_attack_wave_type, west, 1] call SpawnRhsSquad;
                  };

                  {
                      [(_x select 0), position (_x select 0)] spawn Rhs_paradrop;
                  } forEach (_returnedArray select 1);

                  _group = (_returnedArray select 0);

                  _TFname = [1] call compile preprocessFile "random_name.sqf";
                  if(PlayableSide == west) then
                  {
                     PAPABEAR sidechat format["This is HQ, We are sending Task Force %1, we will try to push as far as possible in enemy territory",_TFname];

                      _blu_assault = [_group] execVM "WARCOM\WARCOM_wp_blu.sqf";
                  };
                      _blu_assault = [_group,_TFname] execVM "WARCOM\WARCOM_gps_marker.sqf";

                  if(PlayableSide == east) then
                    {
                        _killcp = [] call cp_ehkilledwest;
                    };

                  sleep (WARCOM_blu_attack_delay + (random 300));

              };


              //_blu_assault = [_group,_randomZone] execVM "WARCOM\WARCOM_wp_blu.sqf";

};


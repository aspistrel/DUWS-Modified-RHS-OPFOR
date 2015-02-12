_loop = true;

WARCOM_opf_attack_wave_type = "";
WARCOM_opf_attack_wave_avalaible = false;
aliveAllUnits = {alive _x} count allunits;


// Type of attack wave
[] spawn {

          _smallestApValue = 1000; //wow, so big

            {
                if((_x select 0) < _smallestApValue) then
                {
                    _smallestApValue = (_x select 0);
                };
            } forEach OPFOR_ASSAULT_SQUADS;

            waitUntil {sleep 1; WARCOM_opfor_ap>=_smallestApValue};

            if(PlayableSide == east) then
            {
                PAPABEAR sidechat "This is Eagle, area is secured. We'll soon be able to send reinforcements and capture the island. This will be a piece of cake.";
            };
            WARCOM_opf_attack_wave_avalaible = true;

            while {true} do
            {
                _breakForEach = false;
                WARCOM_opf_attack_wave_avalaible = false;
                {
                    if((((_x select 0) / WARCOM_blufor_ap) <= 1)) then
                    {
                        WARCOM_opf_attack_wave_index = _forEachIndex;
                    };
                } forEach OPFOR_ASSAULT_SQUADS;
                WARCOM_opf_attack_wave_avalaible = true;

                if(PREV_wave_index != WARCOM_opf_attack_wave_index) then
                {
                    PREV_wave_index = WARCOM_opf_attack_wave_index;
                    if(PlayableSide == east) then
                    {
                        PAPABEAR sidechat ("This is Eagle, we are ready to send reinforcements (level " + str WARCOM_opf_attack_wave_index + ")");
                    };
                };

                WARCOM_opf_attack_wave_type = ((OPFOR_ASSAULT_SQUADS select WARCOM_opf_attack_wave_index) select 1);

            sleep 5;
            };
		 
};






// Attack waves main
[] spawn {

    waitUntil {sleep 6; WARCOM_opf_attack_wave_avalaible;};

    while {true} do
    {
        aliveAllUnits = {alive _x} count allunits;
        waitUntil {sleep (random 1); ((aliveAllUnits < WARCOMLimitAI) && WARCOM_opf_attack_wave_avalaible);};

        _returnedArray = [];
        if(PlayableSide == west) then
        {
            _found = false;
            _randomZone = [];
            _failSafe = 0;
            while {!_found} do
            {
                _randomZone = WARCOM_zones_controled_by_OPFOR call BIS_fnc_selectRandom;
                if (_randomZone distance player > 900) then {_found=true;};
                sleep 0.2;

                _failSafe = _failSafe + 1;
                if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
            };

            // find a zone *** end///// Spawn Troops
            _randomZone = [(_randomZone select 0)+40,_randomZone select 1];

            _returnedArray = [_randomZone, WARCOM_opf_attack_wave_type, east, 1] call SpawnRhsSquad;
        }
        else
        {
            _returnedArray = [WARCOM_opf_hq_pos, WARCOM_opf_attack_wave_type, east, 1] call SpawnRhsSquad;
        };

        {
            [(_x select 0), position (_x select 0)] spawn Rhs_paradrop;
        } forEach (_returnedArray select 1);

        _group = (_returnedArray select 0);

        _TFname = [1] call compile preprocessFile "random_name.sqf";
        if(PlayableSide == east) then
        {
            PAPABEAR sidechat format["This is Eeagle, We are sending Task Force %1, we will try to push as far as possible in enemy territory",_TFname];

            _opf_assault = [_group] execVM "WARCOM\WARCOM_wp_opf.sqf";
        };
            _opf_assault = [_group,_TFname] execVM "WARCOM\WARCOM_gps_marker.sqf";

        if(PlayableSide == west) then
        {
            _killcp = [] call cp_ehkilledeast;
        };

        sleep (WARCOM_opf_attack_delay + (random 300));

    };


          
  };


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
        [West,"HQ"] sidechat "This is HQ, US Military forces just arrived on the island, we'll soon be able to push through the enemy lines";
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
                [West,"HQ"] sidechat ("This is HQ, we are ready to send reinforcements (level " + str WARCOM_blu_attack_wave_index + ")");
            };

            WARCOM_blu_attack_wave_type = ((BLUFOR_ASSAULT_SQUADS select WARCOM_blu_attack_wave_index) select 1);

        sleep 5;
        };

        /*WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team");

        waitUntil {sleep 1;WARCOM_blufor_ap>40};
        WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_squad");

        waitUntil {sleep 1;WARCOM_blufor_ap>65};
        WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_weaponsquad");

        waitUntil {sleep 1;WARCOM_blufor_ap>100};
        WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad");

        waitUntil {sleep 1;WARCOM_blufor_ap>135};
        WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad_mg_sniper");		 */
	                           
};




// Attack waves main

[] spawn {
          waitUntil {sleep 6; WARCOM_blu_attack_wave_avalaible;};

          while {true} do {
		  aliveAllUnits = {alive _x} count allunits;
		  waitUntil {sleep (random 1); ((aliveAllUnits < WARCOMLimitAI) && WARCOM_blu_attack_wave_avalaible);};
		  //_group = [WARCOM_blu_hq_pos, WEST, WARCOM_blu_attack_wave_type,[],[],blufor_ai_skill] call BIS_fnc_spawnGroup;
		  //SQUAD = ((BLUFOR_ASSAULT_SQUADS select 0) select 1);
		  _returnedArray = [WARCOM_blu_hq_pos, WARCOM_blu_attack_wave_type, west, 1] call SpawnRhsSquad;

            {
              [(_x select 0), position (_x select 0)] spawn Rhs_paradrop;
            } forEach (_returnedArray select 1);

		  _group = (_returnedArray select 0);

          _TFname = [1] call compile preprocessFile "random_name.sqf";
          [West,"HQ"] sidechat format["This is HQ, We are sending Task Force %1, we will try to push as far as possible in enemy territory",_TFname];
          _blu_assault = [_group] execVM "WARCOM\WARCOM_wp.sqf";
          _blu_assault = [_group,_TFname] execVM "WARCOM\WARCOM_gps_marker.sqf";
          sleep 60;
          //sleep (WARCOM_blu_attack_delay/* + (random 60)*/);
          
          };
};


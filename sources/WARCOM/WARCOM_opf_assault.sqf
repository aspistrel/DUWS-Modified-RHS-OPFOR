_loop = true;

WARCOM_opf_attack_wave_type = "";
WARCOM_opf_attack_wave_avalaible = false;
aliveAllUnits = {alive _x} count allunits;


// Type of attack wave
[] spawn {

          waitUntil {sleep 1;WARCOM_opfor_ap>=10};
          WARCOM_opf_attack_wave_avalaible = true;
          WARCOM_opf_attack_wave_type = (configfile >> "CfgGroups" >> "EAST" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_fireteam");
      
          waitUntil {sleep 1;WARCOM_opfor_ap>40};          
          WARCOM_opf_attack_wave_type = (configfile >> "CfgGroups" >> "EAST" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_squad");
          
          waitUntil {sleep 1;WARCOM_opfor_ap>65};          
          WARCOM_opf_attack_wave_type = (configfile >> "CfgGroups" >> "EAST" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_squad_mg_sniper");

          waitUntil {sleep 1;WARCOM_opfor_ap>100};          
          WARCOM_opf_attack_wave_type = (configfile >> "CfgGroups" >> "EAST" >> "rhs_faction_msv" >> "rhs_group_rus_msv_bmp2" >> "rhs_group_rus_msv_bmp2_squad");

          waitUntil {sleep 1;WARCOM_opfor_ap>135};
		  WARCOM_opf_attack_wave_type = (configfile >> "CfgGroups" >> "EAST" >> "rhs_faction_msv" >> "rhs_group_rus_msv_bmp2" >> "rhs_group_rus_msv_bmp2_squad_mg_sniper");
		 
};






// Attack waves main
if (Warcom_Limiter_Param == 1) then {
[] spawn {
          waitUntil {sleep 6; WARCOM_opf_attack_wave_avalaible;};

          while {true} do {
		  aliveAllUnits = {alive _x} count allunits;
		  waitUntil {sleep (random 30); aliveAllUnits < 130};
                    
          // find a zone where to spawn OPF wave *** BEGIN
          _found = false;
          _randomZone = [];
          _failSafe = 0;
            while {!_found} do {
            _randomZone = WARCOM_zones_controled_by_OPFOR call BIS_fnc_selectRandom;
            if (_randomZone distance player > 900) then {_found=true;};
            sleep 0.2;

            _failSafe = _failSafe + 1;
            if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
            };
          // find a zone *** end///// Spawn Troops
          _randomZone = [(_randomZone select 0)+40,_randomZone select 1];
          _group = [_randomZone, EAST, WARCOM_opf_attack_wave_type,[],[],WARCOM_opf_ai_skill_range] call BIS_fnc_spawnGroup;
		  _killcp = [] call cp_ehkilledeast;          
          _opf_assault = [_group,_randomZone] execVM "WARCOM\WARCOM_wp_opf.sqf";          

          sleep (WARCOM_opf_attack_delay + (random 900));
          
          };
};
}

else {

[] spawn {
          waitUntil {sleep 6; WARCOM_opf_attack_wave_avalaible;};

          while {true} do {
		  aliveAllUnits = {alive _x} count allunits;
		  waitUntil {sleep (random 30); aliveAllUnits < 500};
		            
          // find a zone where to spawn OPF wave *** BEGIN
          _found = false;
          _randomZone = [];
          _failSafe = 0;
            while {!_found} do {
            _randomZone = WARCOM_zones_controled_by_OPFOR call BIS_fnc_selectRandom;
            if (_randomZone distance player > 900) then {_found=true;};
            sleep 0.2;

            _failSafe = _failSafe + 1;
            if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
            };
          // find a zone *** end ////////////////Spawn Troops
          _randomZone = [(_randomZone select 0)+40,_randomZone select 1];
          _group = [_randomZone, EAST, WARCOM_opf_attack_wave_type,[],[],WARCOM_opf_ai_skill_range] call BIS_fnc_spawnGroup;		  
		  _killcp = [] call cp_ehkilledeast;          
          _opf_assault = [_group,_randomZone] execVM "WARCOM\WARCOM_wp_opf.sqf";
         
          sleep (WARCOM_opf_attack_delay + (random 900));
          
          };
};
};


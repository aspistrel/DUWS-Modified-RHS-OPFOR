_loop = true;

WARCOM_blu_attack_wave_type = "";
WARCOM_blu_attack_wave_avalaible = false;
aliveAllUnits = {alive _x} count allunits;

// Type of attack wave
[] spawn {
          
          waitUntil {sleep 1;WARCOM_blufor_ap>=10};
          [West,"HQ"] sidechat "This is HQ, US Military forces just arrived on the island, we'll soon be able to push through the enemy lines";
          WARCOM_blu_attack_wave_avalaible = true;
          WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team");

          waitUntil {sleep 1;WARCOM_blufor_ap>40};          
          WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_squad"); 
          
          waitUntil {sleep 1;WARCOM_blufor_ap>65};          
          WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_weaponsquad"); 
          
          waitUntil {sleep 1;WARCOM_blufor_ap>100};          
          WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad");
          
          waitUntil {sleep 1;WARCOM_blufor_ap>135};
		  WARCOM_blu_attack_wave_type = (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad_mg_sniper");		 
	                           
};




// Attack waves main
if (Warcom_Limiter_Param == 1) then {

[] spawn {
          waitUntil {sleep 6; WARCOM_blu_attack_wave_avalaible;};

          while {true} do {
		  aliveAllUnits = {alive _x} count allunits;
		  waitUntil {sleep (random 30); aliveAllUnits < 130};
		  _group = [WARCOM_blu_hq_pos, WEST, WARCOM_blu_attack_wave_type,[],[],blufor_ai_skill] call BIS_fnc_spawnGroup;
          _TFname = [1] call compile preprocessFile "random_name.sqf";
          [West,"HQ"] sidechat format["This is HQ, We are sending Task Force %1, we will try to push as far as possible in enemy territory",_TFname];
          _blu_assault = [_group] execVM "WARCOM\WARCOM_wp.sqf";
          _blu_assault = [_group,_TFname] execVM "WARCOM\WARCOM_gps_marker.sqf";
		  sleep (WARCOM_blu_attack_delay + (random 900));
          
          };
};
}

else {

[] spawn {
          waitUntil {sleep 6; WARCOM_blu_attack_wave_avalaible;};

          while {true} do {
		  aliveAllUnits = {alive _x} count allunits;
		  waitUntil {sleep (random 30); aliveAllUnits < WARCOMLimitAI;};
		  //_group = [WARCOM_blu_hq_pos, WEST, WARCOM_blu_attack_wave_type,[],[],blufor_ai_skill] call BIS_fnc_spawnGroup;
		  SQUAD = ((BLUFOR_ASSAULT_SQUADS select 0) select 1);
		  _group = [WARCOM_blu_hq_pos, SQUAD, west] call SpawnRhsSquad;

          _TFname = [1] call compile preprocessFile "random_name.sqf";
          [West,"HQ"] sidechat format["This is HQ, We are sending Task Force %1, we will try to push as far as possible in enemy territory",_TFname];
          _blu_assault = [_group] execVM "WARCOM\WARCOM_wp.sqf";
          _blu_assault = [_group,_TFname] execVM "WARCOM\WARCOM_gps_marker.sqf";		  
          sleep (WARCOM_blu_attack_delay + (random 60));
          
          };
};
};

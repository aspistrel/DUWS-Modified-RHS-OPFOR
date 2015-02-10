                                                             // case #

  _handle = createDialog "ressourceheader";  
  waitUntil {dialog};
  ctrlSetText [1000, format["%1",commandpoints]];
  ctrlSetText [1001, format["%1",zoneundercontrolplayer]];

  if(PlayableSide == west) then
  {
      ctrlSetText [1002, format["%1",WARCOM_blufor_ap]];
  }

  if(PlayableSide == east) then
  {
      ctrlSetText [1002, format["%1",WARCOM_opfor_ap]];
  }

  //ctrlSetText [1002, format["%1",WARCOM_blufor_ap]];
  //ctrlSetText [1002, format["%1",WARCOM_opfor_ap]];
    
// UNITS  
    _index = lbAdd [2100, "Rifleman(2CP)"];                  // 0
    _index = lbAdd [2100, "Rifleman Light(2CP)"];                 // 1
    _index = lbAdd [2100, "Rifleman M16(2CP)"];        // 2
    _index = lbAdd [2100, "Rifleman M136(3CP)"];               // 3
    _index = lbAdd [2100, "Grenadier(3CP)"];                     // 4
    _index = lbAdd [2100, "Marksman(3CP)"];             // 5
    _index = lbAdd [2100, "Autorifleman(3CP)"];         // 6 
    _index = lbAdd [2100, "Autorifleman Assit(2CP)"];             // 7
    _index = lbAdd [2100, "Machinegunner(4CP)"];                  // 8 
    _index = lbAdd [2100, "Machinegunner Assist(2CP)"];                  // 9 
    _index = lbAdd [2100, "Sniper(4CP)"]; 	             // 10 	
    _index = lbAdd [2100, "Sniper (Ghillie)(4CP)"];                   // 11	
    _index = lbAdd [2100, "Spotter(4CP)"];      // 12
    _index = lbAdd [2100, "Squad Leader(3CP)"];                  // 13
    _index = lbAdd [2100, "Team Leader(3CP)"];                 // 14
    _index = lbAdd [2100, "Medic(4CP)"];        // 15
    _index = lbAdd [2100, "Engineer(4CP)"];               // 16
    _index = lbAdd [2100, "AT Specialist(4CP)"];        // 17
    _index = lbAdd [2100, "AA Specialist(4CP)"];               // 18
    _index = lbAdd [2100, "Heli Pilot(2CP)"];                     // 19
    _index = lbAdd [2100, "Heli Crew(2CP)"];             // 20
    _index = lbAdd [2100, "Crewman(2CP)"];         // 21
    _index = lbAdd [2100, "Combat Crew(2CP)"];             // 22
    _index = lbAdd [2100, "Driver(2CP)"];                  // 23
    _index = lbAdd [2100, "Diver(3CP)"];                  // 24
    _index = lbAdd [2100, "Explosives Diver(4CP)"];                  // 25

lbSetCurSel [2100, 0];

// SQUADS  
    _index0 = lbAdd [2101, "Fireteam(8CP)"];                   // 0
    _index0 = lbAdd [2101, "Rifle Squad(16CP)"];               // 1
    _index0 = lbAdd [2101, "Weapons Squad(18CP)"];             // 2
    _index0 = lbAdd [2101, "AT Team(12CP)"];                   // 3
    _index0 = lbAdd [2101, "AA Team(15CP)"];                   // 4
    _index0 = lbAdd [2101, "SF Recon Team(12CP)"];             // 5
    _index0 = lbAdd [2101, "SF Recon Squad(20CP)"];            // 6
    _index0 = lbAdd [2101, "Divers Team(12CP)"];               // 7
    _index0 = lbAdd [2101, "Sniper Team(8CP)"];                // 8
    _index0 = lbAdd [2101, "Medical Team(10CP)"];              // 9
    _index0 = lbAdd [2101, "Motorized scouts(28CP)"];          // 10
    _index0 = lbAdd [2101, "Mechanized squad(36CP)"];          // 11
	_index0 = lbAdd [2101, "Tank Section Abrams(40CP)"];          // 12
	_index0 = lbAdd [2101, "Tank Platoon AA(40CP)"];          // 13
	
	
  lbSetCurSel [2101, 0];

// VEHICLES  
    _index1 = lbAdd [2102, "M998W 4 Door(O)(4CP)"];       // 0
    _index1 = lbAdd [2102, "M998W 4 Door(S)(4CP)"];       // 1
    _index1 = lbAdd [2102, "M998W 4 Door(C)(4CP)"];            // 2
    _index1 = lbAdd [2102, "M998W 2 Door(O)(6CP)"];               // 3
    _index1 = lbAdd [2102, "M998W 2 Door(S)(6CP)"];               // 4
    _index1 = lbAdd [2102, "M998W 2 Door(C)(6CP)"];           // 5
    _index1 = lbAdd [2102, "M1025 (Unarmed)(6CP)"];                     // 6
    _index1 = lbAdd [2102, "M1025 (M2) (12CP)"];             // 7
    _index1 = lbAdd [2102, "M1025 (Mk19) (18CP)"];          // 8
    _index1 = lbAdd [2102, "HEMTT Transport(O)(8CP)"];         // 9
    _index1 = lbAdd [2102, "HEMTT Transport(C)(8CP)"];          // 10
    _index1 = lbAdd [2102, "HEMTT Fuel (10CP)"];          // 11
    _index1 = lbAdd [2102, "HEMTT Medical (10CP)"];          // 12
    _index1 = lbAdd [2102, "HEMTT Repair (10CP)"];          // 13
    _index1 = lbAdd [2102, "HEMTT Ammo (10CP)"];           // 14
    _index1 = lbAdd [2102, "CRV-6e Bobcat (28CP)"];           // 15
    _index1 = lbAdd [2102, "M-ATV (Unarmed) (8CP)"];                       // 16
    _index1 = lbAdd [2102, "M-ATV (M2) (14CP)"];           // 17
    _index1 = lbAdd [2102, "M-ATV (GMG) (20CP)"];             // 18
    _index1 = lbAdd [2102, "M113A3 (20CP)"];            // 19
    _index1 = lbAdd [2102, "M2A2 ODS(30CP)"];      		      // 20
	_index1 = lbAdd [2102, "M2A2 ODS (BUSK I)(32CP)"];      		      // 21
	_index1 = lbAdd [2102, "M2A3 (34CP)"];      		      // 22
	_index1 = lbAdd [2102, "M2A3 (BUSK I) (36CP)"];      		      // 23
	_index1 = lbAdd [2102, "M2A3 (BUSK III) (38CP)"];     // 24
	_index1 = lbAdd [2102, "M6A2 Linebacker(32CP)"];    // 25
	_index1 = lbAdd [2102, "M1A1AIM(38CP)"];    // 26
	_index1 = lbAdd [2102, "M1A1AIM (TUSK)(40CP)"];    // 27
	_index1 = lbAdd [2102, "M1A2SEP(44CP)"];    // 28
	_index1 = lbAdd [2102, "M1A2SEP (TUSK)(50CP)"];    // 29
	_index1 = lbAdd [2102, "M109A6(75CP)"];    // 30
	_index1 = lbAdd [2102, "MLRS Artillery(75CP)"];    // 31
	_index1 = lbAdd [2102, "MH-6(18CP)"];    // 32
	_index1 = lbAdd [2102, "AH-6(28CP)"];    // 33
	_index1 = lbAdd [2102, "AH-64D(45CP)"];    // 34
	_index1 = lbAdd [2102, "CH-47F(28CP)"];    // 35
	_index1 = lbAdd [2102, "UH-60M(22CP)"];    // 36
	_index1 = lbAdd [2102, "UH-60M MEV(24CP)"];    // 37
	_index1 = lbAdd [2102, "A-10A(45CP)"];    // 38
	_index1 = lbAdd [2102, "Attack UAV(15CP)"];    // 39
	_index1 = lbAdd [2102, "CAS UAV(15CP)"];    // 40
	_index1 = lbAdd [2102, "UAV Darter(5CP)"];    // 41

	
  lbSetCurSel [2102, 0];
    
        
     
// Supports  !!! CHECK TO ADD AT INIT
			  index_support_camera = lbAdd [2103, "Recon Camera System(10CP)"];                // 0
			  index_support_supply = lbAdd [2103, "Supply drop(10CP)"];                // 1
              index_support_arty = lbAdd [2103, "Artillary strike(15CP)"];            // 2
              index_support_mortar = lbAdd [2103, "Mortar strike(10CP)"];             // 3
              index_support_paradrop = lbAdd [2103, "Airborne troops(15CP)"];         // 4
              index_support_jdam = lbAdd [2103, "JDAM strike(15CP)"];                 // 5
              index_support_armory = lbAdd [2103, "Armory(3CP)"];                     // 6
              index_support_pFLIR = lbAdd [2103, "Personal FLIR display(12CP)"];      // 7
              index_support_uavrecon = lbAdd [2103, "UAV Recon(15CP)"];               // 8
              index_support_refit = lbAdd [2103, "Vehicle Refit(5CP)"];               // 9
			  index_support_helotaximh9 = lbAdd [2103, "HeliTaxi MH-9(8CP)"];          // 10
              index_support_helotaxi80 = lbAdd [2103, "HeliTaxi CH-47(14CP)"];          // 11
			  index_support_helotaxi290 = lbAdd [2103, "HeliTaxi UH-60(10CP)"];          // 12
              index_support_cluster = lbAdd [2103, "Mk.20 II CBU(15CP)"];             // 11
			  index_support_training = lbAdd [2103, "Specialized Infantry training(20CP)"];//12
			  index_support_boattaxi = lbAdd [2103, "Boat Taxi(2CP)"];				  //13
			  index_support_halo = lbAdd [2103, "Halo(15CP)"];                     // 14
			  index_support_hcCAS = lbAdd [2103, "High Command Close Air Support(20CP)"];                     // 15
			  index_support_hcAttChop = lbAdd [2103, "High Command Attack Chopper(20CP)"];                     // 16
			  index_support_hcAIRTRANS = lbAdd [2103, "High Command UH-60(10CP)"];                     // 17
			  index_support_hcGRTRANS = lbAdd [2103, "High Command Ground Transport(8CP)"];                     // 18
			  index_support_hcBob = lbAdd [2103, "High Command Bobcat Refit(25CP)"];                     // 19
			  index_support_hcREPAIR = lbAdd [2103, "High Command Repair Team(8CP)"];                     // 20
			  index_support_hcREFUEL = lbAdd [2103, "High Command Refuel Team(8CP)"];                     // 21
			  index_support_fob = lbAdd [2103, "**911 ONLY!** ADD FOB Reqst to 0-8"];                           //22
			
//  lbSetCurSel [2103, 0];

		
         if (support_camera_available) then 
             {
              lbSetColor [2103, 0, [0, 1, 0, 1]];
             };
		 if (support_supplydrop_available) then 
             {
              lbSetColor [2103, 1, [0, 1, 0, 1]];
             }; 
         if (support_arty_available) then 
             {
              lbSetColor [2103, 2, [0, 1, 0, 1]];
             };                
         if (support_mortar_available) then 
             {
              lbSetColor [2103, 3, [0, 1, 0, 1]];
             };          
         if (support_paradrop_available) then 
             {
              lbSetColor [2103, 4, [0, 1, 0, 1]];
             };              
         if (support_jdam_available) then 
             {
              lbSetColor [2103, 5, [0, 1, 0, 1]];
             }; 
         if (support_armory_available) then 
             {
              lbSetColor [2103, 6, [0, 1, 0, 1]];
             }; 
         if (support_pflir_available) then 
             {
              lbSetColor [2103, 7, [0, 1, 0, 1]];
             }; 
         if (support_uav_recon_available) then 
             {
              lbSetColor [2103, 8, [0, 1, 0, 1]];
             }; 
         if (support_veh_refit_available) then 
             {
              lbSetColor [2103, 9, [0, 1, 0, 1]];
             };              
         if (support_helotaximh9_available) then 
             {
              lbSetColor [2103, 10, [0, 1, 0, 1]];
             };
		if (support_helotaxi80_available) then 
             {
              lbSetColor [2103, 11, [0, 1, 0, 1]];
             };
		if (support_helotaxi290_available) then 
             {
              lbSetColor [2103, 12, [0, 1, 0, 1]];
             };
         if (support_cluster_available) then 
             {
              lbSetColor [2103, 13, [0, 1, 0, 1]];
             }; 
         if (support_specialized_training_available) then 
             {
              lbSetColor [2103, 14, [0, 1, 0, 1]];
             };              
          if (support_boattaxi_available) then 
             {
              lbSetColor [2103, 15, [0, 1, 0, 1]];
             };
		  if (support_halo_available) then 
             {
              lbSetColor [2103, 16, [0, 1, 0, 1]];
             }; 
		  if (support_hcCAS_available) then 
             {
              lbSetColor [2103, 17, [0, 1, 0, 1]];
             };
		  if (support_hcAttChop_available) then 
             {
              lbSetColor [2103, 18, [0, 1, 0, 1]];
             };	 
          if (support_hcAIRTRANS_available) then 
             {
              lbSetColor [2103, 19, [0, 1, 0, 1]];
             };
		 if (support_hcGRTRANS_available) then 
             {
              lbSetColor [2103, 20, [0, 1, 0, 1]];
             };
		 if (support_hcBob_available) then 
             {
              lbSetColor [2103, 21, [0, 1, 0, 1]];
             };
         if (support_hcREPAIR_available) then 
             {
              lbSetColor [2103, 22, [0, 1, 0, 1]];
             };
         if (support_hcREFUEL_available) then 
             {
              lbSetColor [2103, 23, [0, 1, 0, 1]];
             };
		 if (support_FOB_available) then 
             {
              lbSetColor [2103, 24, [0, 1, 0, 1]];
             };	 
         		 
// _center = createCenter sideLogic;   un center existe d�j�

// create && synchronize HC
_grplogic = createGroup sideLogic;
_hc_module = _grplogic createUnit ["HighCommand",[0,0,0] , [], 0, ""];
_hc_module synchronizeObjectsAdd [player];
// done,

// make 1 HC subordinate so that the player will not control all blufor forces
_grplogic = createGroup sideLogic;
_sub_module = _grplogic createUnit ["HighCommandsubordinate",[0,0,0] , [], 0, ""];                    
_sub_module synchronizeObjectsAdd [_hc_module];

// ===============

RequestGroups = [(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_squad"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_weaponsquad"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_heavy_AT"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_AA"),
(configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconPatrol"),
(configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_ReconTeam"),
(configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "SpecOps" >> "BUS_DiverTeam"),
(configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Infantry" >> "BUS_SniperTeam"),
(configfile >> "CfgGroups" >> "West" >> "BLU_F" >> "Support" >> "BUS_Support_CLS"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradley" >> "rhs_group_nato_usarmy_wd_bradley_squad"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_bradleyA3" >> "rhs_group_nato_usarmy_wd_bradleyA3_squad"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_M1A2" >> "RHS_M1A2SEP_wd_Platoon"),
(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_M1A2" >> "RHS_M1A2SEP_wd_Platoon_AA")
];

/*
"RHS_AH64D_wd",
"RHS_UH60M",
"RHS_UH60M",
"RHS_A10",
"B_Truck_01_transport_F",
"B_G_Van_01_fuel_F",
"B_Truck_01_Repair_F"
*/

RequestNames = [["Fireteam", 0],
["Rifle squad", 0],
["Wpns squad", 0],
["AT team", 0],
["AA team", 0],
["SF team", 0],
["SF squad", 0],
["Divers team", 0],
["Sniper team", 0],
["Medical team", 0],
["Mot. scouts", 0],
["Mec. squad", 0],
["Tank Armor squad", 0],
["AA Armor squad", 0]
];

RequestBoostedAI = [false,
false,
false,
false,
false,
true,
true,
true,
true,
false,
false,
false,
false,
false
];

/*

["Air attack squad", 0],
["AirH transport", 0],
["Airtrans1", 0],
["CAS squad", 0],
["GrndTr transport", 0],
["Fuel Team", 0],
["Repair Team", 0],
["Airtrans1", 0],
["Airtrans1", 0],
*/

RequestCost = [8, 16, 18, 12, 15, 12, 20, 12, 8, 10, 28, 36, 40, 40];


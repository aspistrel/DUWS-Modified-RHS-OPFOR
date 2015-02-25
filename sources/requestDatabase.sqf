if(PlayableSide == west) then
{
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
}
else
{
    RequestGroups = [(configfile >> "CfgGroups" >> "West" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_fireteam"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_squad"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_squad_2mg"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_section_AT"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_section_AA"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry" >> "rhs_group_rus_vdv_infantry_section_marksman"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry" >> "rhs_group_rus_vdv_infantry_squad_mg_sniper"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry" >> "rhs_group_rus_vdv_infantry_MANEUVER"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry" >> "rhs_group_rus_vdv_infantry_squad_sniper"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_infantry" >> "rhs_group_rus_vdv_infantry_squad_sniper"), // there is only 2 squads with medics - sniper squad and infantry squad. RHS fix it!
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_vdv" >> "rhs_group_rus_vdv_bmd4" >> "rhs_group_rus_vdv_bmd4_squad_sniper"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_MSV_BMP3" >> "rhs_group_rus_MSV_BMP3_squad_2mg"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_80" >> "RHS_T80BPlatoon"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_tv" >> "rhs_group_rus_tv_80" >> "RHS_T80BPlatoon_AA")
    ];
};

if(PlayableSide == west) then
{
    RequestFobGroups = [(configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team"),
    (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_heavy_AT"),
    (configfile >> "CfgGroups" >> "West" >> "rhs_faction_usarmy_wd" >> "rhs_group_nato_usarmy_wd_infantry" >> "rhs_group_nato_usarmy_wd_infantry_team_AA")
    ];
}
else
{
    RequestFobGroups = [(configfile >> "CfgGroups" >> "West" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_fireteam"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_section_AT"),
    (configfile >> "CfgGroups" >> "East" >> "rhs_faction_msv" >> "rhs_group_rus_msv_infantry" >> "rhs_group_rus_msv_infantry_section_AA")
    ];
};

//RequestUnitCost = [2, 2, 2, 3, 4, 3, 3, 2, 4, 2, 4, 4, 4, 4, 3, 4, 4, 2, 2, 2, 2, 2, 2, 2, 3, 4];
//RequestUnitBoostedAI = [false,false,false,false,false,false,false,false,true,false,true,true,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
if(PlayableSide == west) then
{
    RequestUnit = [
    ["rhsusf_army_ocp_rifleman", 2, false],
    ["rhsusf_army_ocp_riflemanl", 2, false],
    ["rhsusf_army_ocp_rifleman_m16", 2, false],
    ["rhsusf_army_ocp_riflemanat", 3, false],
    ["rhsusf_army_ocp_grenadier", 4, false],
    ["rhsusf_army_ocp_marksman", 3, false],
    ["rhsusf_army_ocp_autorifleman", 3, false],
    ["rhsusf_army_ocp_autoriflemana", 2, false],
    ["rhsusf_army_ocp_machinegunner", 4, true],
    ["rhsusf_army_ocp_machinegunnera", 4, false],
    ["rhsusf_army_ocp_sniper", 4, true],
    ["B_sniper_F", 4, true],
    ["B_spotter_F", 3, false],
    ["rhsusf_army_ocp_squadleader", 4, false],
    ["rhsusf_army_ocp_teamleader", 4, false],
    ["rhsusf_army_ocp_medic", 2, false],
    ["rhsusf_army_ocp_engineer", 2, false],
    ["rhsusf_army_ocp_javelin", 2, false],
    ["rhsusf_army_ocp_aa", 2, false],
    ["rhsusf_army_ocp_helipilot", 2, false],
    ["rhsusf_army_ocp_helicrew", 2, false],
    ["rhsusf_army_ocp_crewman", 2, false],
    ["rhsusf_army_ocp_combatcrewman", 2, false],
    ["rhsusf_army_ocp_driver", 2, false],
    ["B_diver_F", 3, false],
    ["B_diver_exp_F", 4, false]
    ];
}
else
{
    RequestUnit = [
    ["rhs_msv_emr_rifleman", 2, false],
    ["rhs_msv_rifleman", 2, false],
    ["rhs_msv_efreitor", 3, false],
    ["rhs_msv_at", 2, false],
    ["rhs_msv_grenadier", 4, false],
    ["rhs_msv_marksman", 4, true],
    ["rhs_msv_machinegunner", 4, true],
    ["rhs_msv_machinegunner_assistant", 4, false],
    ["rhs_msv_marksman", 2, false],
    ["rhs_vdv_recon_marksman", 2, false],
    ["rhs_vdv_recon_sergeant", 2, false],
    ["rhs_msv_sergeant", 2, false],
    ["rhs_msv_medic", 2, false],
    ["rhs_msv_engineer", 2, false],
    ["rhs_msv_at", 2, false],
    ["rhs_msv_aa", 2, false],
    ["rhs_pilot_combat_heli", 2, false],
    ["rhs_pilot", 2, true],
    ["rhs_msv_crew", 2, false],
    ["rhs_msv_combatcrew", 2, false],
    ["rhs_msv_driver_armored", 2, false],
    ["rhs_vdv_recon_engineer", 3, false]
    ];
};

if(PlayableSide == west) then
{
    RequestUnitFob = [
    ["rhsusf_army_ocp_rifleman", 2, false],
    ["rhsusf_army_ocp_medic", 2, false],
    ["rhsusf_army_ocp_engineer", 4, false]
    ];
}
else
{
    RequestUnitFob = [
    ["rhs_msv_emr_rifleman", 2, false],
    ["rhs_msv_medic", 2, false],
    ["rhs_msv_engineer", 4, false]
    ];
};

if(PlayableSide == west) then
{
    RequestVehicle = [
    ["rhsusf_m998_w_4dr", 4],
    ["rhsusf_m998_w_4dr_halftop", 4],
    ["rhsusf_m998_w_4dr_fulltop", 4],
    ["rhsusf_m998_w_2dr", 6],
    ["rhsusf_m998_w_2dr_halftop", 6],
    ["rhsusf_m998_w_2dr_fulltop", 6],
    ["rhsusf_m1025_w", 6],
    ["rhsusf_m1025_w_m2", 12],
    ["rhsusf_m1025_w_mk19", 18],
    ["B_Truck_01_transport_F", 8],
    ["B_Truck_01_covered_F", 8],
    ["B_Truck_01_fuel_F", 10],
    ["B_Truck_01_medical_F", 10],
    ["B_Truck_01_Repair_F", 10],
    ["B_Truck_01_ammo_F", 10],
    ["B_APC_Tracked_01_CRV_F", 28],
    ["B_MRAP_01_F", 8],
    ["B_MRAP_01_hmg_F", 14],
    ["B_MRAP_01_gmg_F", 20],
    ["rhsusf_m113_usarmy", 20],
    ["RHS_M2A2_wd", 30],
    ["RHS_M2A2_BUSKI_wd", 32],
    ["RHS_M2A3_wd", 34],
    ["RHS_M2A3_BUSKI_wd", 36],
    ["RHS_M2A3_BUSKIII_wd", 38],
    ["RHS_M6_wd", 32],
    ["rhsusf_m1a1aimwd_usarmy", 38],
    ["rhsusf_m1a1aim_tuski_wd", 40],
    ["rhsusf_m1a2sep1wd_usarmy", 44],
    ["rhsusf_m1a2sep1tuskiwd_usarmy", 50],
    ["rhsusf_m109_usarmy", 75],
    ["B_MBT_01_mlrs_F", 75],
    ["B_Heli_Light_01_F", 18],
    ["B_Heli_Light_01_armed_F", 28],
    ["rhs_ah64d_wd", 45],
    ["rhs_ch_47f", 28],
    ["rhs_uh60m", 22],
    ["rhs_uh60m_mev", 24],
    ["rhs_a10", 45],
    ["B_UAV_02_F", 15],
    ["B_UAV_02_CAS_F", 15],
    ["B_UAV_01_F", 5]
    ];
}
else
{
    RequestVehicle = [
    ["RHS_UAZ_MSV_01", 4],
    ["rhs_uaz_open_MSV_01", 4],
    ["rhs_tigr_msv", 6],
    ["rhs_gaz66_msv",8],
    ["rhs_gaz66_ap2_msv",10],
    ["rhs_gaz66_repair_msv",10],
    ["rhs_gaz66_ammo_msv",10],
    ["RHS_Ural_MSV_01", 10],
    ["RHS_Ural_Fuel_MSV_01",12],
    ["rhs_typhoon_vdv",15],
    ["RHS_BM21_MSV_01",55],
    ["rhs_bmd1",28],
    ["rhs_bmd1k",30],
    ["rhs_bmd1p",32],
    ["rhs_bmd1pk",34],
    ["rhs_bmd1r",36],
    ["rhs_bmd2",32],
    ["rhs_bmd2k",34],
    ["rhs_bmd2m",36],
    ["rhs_bmd4_vdv",36],
    ["rhs_bmd4m_vdv",38],
    ["rhs_bmd4ma_vdv",40],
    ["rhs_bmp1_msv",34],
    ["rhs_bmp1d_msv",37],
    ["rhs_bmp1k_msv",40],
    ["rhs_bmp1p_msv",43],
    ["rhs_bmp2_msv",40],
    ["rhs_bmp2d_msv",43],
    ["rhs_bmp2e_msv",46],
    ["rhs_bmp2k_msv",49],
    //["rhs_bmp3_msv",43],
    //["rhs_bmp3m_msv",46],
   // ["rhs_bmp3mera_msv",50],
    ["rhs_brm1k_msv",35],
    ["rhs_btr60_msv",35],
    ["rhs_btr70_msv",37],
    ["rhs_btr80_msv",39],
    ["rhs_btr80a_msv",37],
    ["rhs_prp3_msv", 30],
    ["rhs_t72ba_tv",40],
    ["rhs_t72bb_tv",44],
    ["rhs_t72bc_tv",48],
    ["rhs_t72bd_tv",52],
    ["rhs_t80",50],
    ["rhs_t80a",55],
    ["rhs_t80b",55],
    ["rhs_t80bk",55],
    ["rhs_t80bv",55],
    ["rhs_t80bvk",65],
    ["rhs_t80u",55],
    //["rhs_2P3_1",0], // подстанции?
    //["rhs_2P3_2",0],
    ["rhs_2s3_tv",55], //artillery
    ["RHS_Mi24P_vvs",35],
    ["RHS_Mi24V_vvs",35],
    ["RHS_Mi24Vt_vvs",45],
    ["RHS_Mi8AMT_vvs",25],
    ["RHS_Mi8AMTSh_vvs",30],
    ["RHS_Mi8mt_vvs",25],
    ["RHS_Mi8MTV3_vvs",27],
    ["RHS_Ka52_vvs",35],
    ["rhs_ka60_c",45],
    ["rhs_ka60_grey",45],
    ["RHS_Su25SM_vvs",45],
    ["B_UAV_02_F", 15],
    ["B_UAV_02_CAS_F", 15],
    ["B_UAV_01_F", 5]
    ];
};

if(PlayableSide == west) then
{
    RequestVehicleFob = [
    ["rhsusf_m998_w_4dr", 4],
    ["rhsusf_m998_w_4dr_halftop", 4],
    ["rhsusf_m998_w_4dr_fulltop", 4],
    ["rhsusf_m998_w_2dr", 6],
    ["rhsusf_m998_w_2dr_halftop", 6],
    ["rhsusf_m998_w_2dr_fulltop", 6],
    ["rhsusf_m1025_w", 6],
    ["rhsusf_m1025_w_m2", 12],
    ["rhsusf_m1025_w_mk19", 18],
    ["B_Truck_01_transport_F", 8],
    ["B_Truck_01_covered_F", 8],
    ["B_Truck_01_fuel_F", 10],
    ["B_Truck_01_medical_F", 10],
    ["B_Truck_01_Repair_F", 10],
    ["B_Truck_01_ammo_F", 10],
    ["B_APC_Tracked_01_CRV_F", 28],
    ["rhsusf_m113_usarmy", 20],
    ["B_Heli_Light_01_F", 18],
    ["rhs_uh60m", 22],
    ["B_UAV_01_F", 5]
    ];
}
else
{
    RequestVehicleFob = [
    ["RHS_UAZ_MSV_01", 4],
    ["rhs_uaz_open_MSV_01", 4],
    ["rhs_tigr_msv", 6],
    ["rhs_gaz66_msv",8],
    ["rhs_gaz66_ap2_msv",10],
    ["rhs_gaz66_repair_msv",10],
    ["rhs_gaz66_ammo_msv",10],
    ["RHS_Ural_MSV_01", 10],
    ["RHS_Ural_Fuel_MSV_01",12],
    ["rhs_typhoon_vdv",15],
    ["RHS_Mi8AMT_vvs",25],
    ["RHS_Mi8AMTSh_vvs",30],
    ["RHS_Mi8mt_vvs",25],
    ["RHS_Mi8MTV3_vvs",27],
    ["B_UAV_01_F", 5]
    ];
};

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

RequestFobNames = [["Fireteam (FOB)", 0],
["AT team (FOB)", 0],
["AA team (FOB)", 0]
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

RequestSquadCost = [8, 16, 18, 12, 15, 12, 20, 12, 8, 10, 28, 36, 40, 40];
RequestFobSquadCost = [12, 18, 18];


SpawnRequestSquad = {

    private ["_currentIndex"];
    _currentIndex = _this select 0;
    _pos = _this select 1;

    _currentAiSkill = blufor_ai_skill;

    if(PlayableSide == east) then
    {
        _currentAiSkill = opfor_ai_skill;
    };

    _aiBoosted = (RequestBoostedAI select _currentIndex);

    _aiSkill = _currentAiSkill;
    if(_aiBoosted) then
    {
        _aiSkill = [0.9,1];
    };

    _cost = (RequestSquadCost select _currentIndex);
    _side = PlayableSide;
    _grouptype = (RequestGroups select _currentIndex);
    _name = ((RequestNames select _currentIndex) select 0);

    _grouptype = (RequestGroups select _currentIndex);
    if (commandpoints >= _cost) then
    {
        _group = [_pos, _side, _grouptype, [], [], _aiSkill] call BIS_fnc_spawnGroup;
        player hcsetgroup [_group,""];
        commandpoints = commandpoints - _cost;
        ctrlSetText [1000, format["%1",commandpoints]];

        //RequestNames set [0, ["Fireteam", ((RequestNames select 0) select 1)+1]];
        RequestNames set [_currentIndex, [_name, ((RequestNames select _currentIndex) select 1)+1]];

        _newNumber = ((RequestNames select _currentIndex) select 1);

        _group setGroupId [format[_name+" %1",_newNumber]];
        hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
    }
    else
    {
        hint "Not enough command points";
    };

};

SpawnRequestSquadFob = {

    private ["_currentIndex"];
    _currentIndex = _this select 0;
    _pos = _this select 1;

    _currentAiSkill = blufor_ai_skill;

    if(PlayableSide == east) then
    {
        _currentAiSkill = opfor_ai_skill;
    };

    _aiSkill = _currentAiSkill;

    _cost = (RequestSquadFobCost select _currentIndex);
    _side = PlayableSide;
    _grouptype = (RequestFobGroups select _currentIndex);
    _name = ((RequestFobNames select _currentIndex) select 0);

    if (commandpoints >= _cost) then
    {
        _group = [_pos, _side, _grouptype, [], [], _aiSkill] call BIS_fnc_spawnGroup;
        player hcsetgroup [_group,""];
        commandpoints = commandpoints - _cost;
        ctrlSetText [1000, format["%1",commandpoints]];

        //RequestNames set [0, ["Fireteam", ((RequestNames select 0) select 1)+1]];
        RequestFobNames set [_currentIndex, [_name, ((RequestFobNames select _currentIndex) select 1)+1]];

        _newNumber = ((RequestFobNames select _currentIndex) select 1);

        _group setGroupId [format[_name+" %1",_newNumber]];
        hint "Squad ready !\nAccess it with [L.CTRL - SPACE]";
    }
    else
    {
        hint "Not enough command points";
    };

};
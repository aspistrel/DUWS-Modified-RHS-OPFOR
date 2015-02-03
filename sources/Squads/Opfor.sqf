// OPFOR RHS squads

/* format:
[
    [
    army_power, [
        commander vehicle, [squad units (infantry)], [other vehicles]
    ]],
    [
    army_power, [
        commander vehicle, [squad units (infantry)], [other vehicles]
    ]],
    ...
]
*/

OPFOR_ASSAULT_SQUADS =
[
    [100,
    [
        "rhs_btr80_msv",
        [
            "rhs_msv_sergeant",
            "rhs_msv_junior_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_marksman",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_LAT",
            "rhs_msv_medic"
        ],
        []
    ]],

    [200,
    [
        "rhs_bmp1k_vdv",
        [
            "rhs_msv_sergeant",
            "rhs_msv_junior_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_marksman",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_LAT",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_strelok_rpg_assist",
            "rhs_msv_medic",
            "rhs_msv_medic",
            "rhs_msv_at",
            "rhs_msv_aa"
        ],
        [
            "rhs_Ural_msv_01",
            "RHS_Mi24P_vdv"
        ]
    ]]

];
publicVariable "OPFOR_ASSAULT_SQUADS";

OPFOR_CONVOY_SQUADS =
[
    [0,
        [
            "rhs_tigr_msv",
            [
                "rhs_msv_sergeant",
                "rhs_msv_junior_sergeant",
                "rhs_msv_machinegunner",
                "rhs_msv_marksman",
                "rhs_msv_machinegunner_assistant",
                "rhs_msv_LAT",
                "rhs_msv_medic"
            ],
            [
                "rhs_gaz66_repair_msv",
                "rhs_gaz66_repair_msv"
            ]
    ]],
    [100,
        [
            "rhs_btr80_msv",
            [
                "rhs_msv_sergeant",
                "rhs_msv_junior_sergeant",
                "rhs_msv_machinegunner",
                "rhs_msv_marksman",
                "rhs_msv_machinegunner_assistant",
                "rhs_msv_LAT",
                "rhs_msv_medic"
            ],
            [
                "rhs_gaz66_repair_msv",
                "rhs_gaz66_repair_msv",
                "rhs_tigr_msv"
            ]
    ]],
    [200,
       [
           "",
           [
               "rhs_msv_sergeant",
               "rhs_msv_junior_sergeant",
               "rhs_msv_machinegunner",
               "rhs_msv_marksman",
               "rhs_msv_machinegunner_assistant",
               "rhs_msv_LAT",
               "rhs_msv_medic"
           ],
           [
               "rhs_bmp2e_msv",
               "rhs_tigr_msv",
               "RHS_Ural_MSV_01",
               "RHS_Ural_MSV_01",
               "rhs_btr80_msv"
           ]
     ]]
];
publicVariable "OPFOR_CONVOY_SQUADS";
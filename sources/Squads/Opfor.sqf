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
    [ 50,
    [
        "rhs_gaz66_msv",
        [
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_LAT",
            "rhs_msv_medic",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
        ],
        []
    ]],

    [ 75,
    [
        "rhs_btr70_msv",
         [
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_LAT", "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
         ],
         []
    ]],

    [ 100,
    [
        "rhs_btr80_msv",
        [
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at",
            "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
        ],
        []
    ]],

    [ 130,
    [
        "rhs_bmp1d_msv",
         [
            "rhs_msv_officer",
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at", "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer",
            "rhs_msv_marksman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
         ],
         [
            "rhs_btr70_msv"
         ]
    ]],

    [ 160,
    [
       "rhs_bmp2d_msv",
       [
            "rhs_msv_officer",
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at", "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer",
            "rhs_msv_marksman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
       ],
       [
            "rhs_btr80_msv"
       ]
    ]],

    [ 200,
    [
       "rhs_bmp2d_msv",
       [
            "rhs_msv_officer_armored",
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at", "rhs_msv_aa",
            "rhs_msv_strelok_rpg_assist",
            "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer",
            "rhs_msv_marksman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
       ],
       [
            "rhs_btr80a_msv"
       ]
    ]],

    [ 240,
    [
       "rhs_bmp2d_msv",
       [
            "rhs_msv_officer_armored",
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_LAT",
            "rhs_msv_at",
            "rhs_msv_aa",
            "rhs_msv_strelok_rpg_assist",
            "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer",
            "rhs_msv_marksman"
       ],
       [
            "rhs_bmp1d_msv",
             "rhs_bmp2d_msv"
       ]
    ]],

    [ 300,
    [
       "",
       [
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_LAT",
            "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer"
       ],
       [
            "rhs_bmp2d_msv",
            "rhs_t72ba_tv",
            "rhs_brm1k_msv"
       ]
    ]],

    [ 360,
    [
       "",
       [
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at",
            "rhs_msv_strelok_rpg_assist",
            "rhs_msv_medic",
            "rhs_msv_engineer"
       ],
       [
            "rhs_bmp2d_msv",
            "rhs_t72bb_tv",
            "rhs_t72bd_tv"
       ]
    ]],

    [ 420,
    [
       "",
       [
            "rhs_msv_officer",
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at",
            "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer",
            "rhs_msv_marksman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
       ],
       [
            "rhs_bmp2d_msv",
            "rhs_bmp1d_msv",
            "rhs_t80",
            "rhs_t72bd_tv"
       ]
    ]],

    [ 500,
    [
       "",
       [
            "rhs_msv_officer_armored",
            "rhs_msv_sergeant",
            "rhs_msv_machinegunner",
            "rhs_msv_machinegunner_assistant",
            "rhs_msv_at",
            "rhs_msv_aa",
            "rhs_msv_strelok_rpg_assist",
            "rhs_msv_medic",
            "rhs_msv_grenadier",
            "rhs_msv_engineer",
            "rhs_msv_marksman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman",
            "rhs_msv_rifleman"
       ],
       [
            "rhs_bmp2d_msv",
            "rhs_bmp2d_msv",
            "rhs_t80bvk",
            "rhs_t80u"
       ]
    ]]
];
publicVariable "OPFOR_ASSAULT_SQUADS";

OPFOR_CONVOY_SQUADS =
[
    [0,
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
                "rhs_tigr_msv",
                "rhs_gaz66_repair_msv",
                "rhs_gaz66_repair_msv"
            ]
    ]],
    [100,
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
                "rhs_btr80_msv",
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
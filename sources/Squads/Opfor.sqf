// OPFOR RHS squads

/* format:
[
    [
    army_power, [
        commander vehicle, [squad units (infantry)], [other vehicles]
    ]],
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
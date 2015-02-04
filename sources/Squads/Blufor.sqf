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

BLUFOR_ASSAULT_SQUADS =
[
    [100,
    [
        "RHS_M2A3_wd",
        [
            "rhsusf_army_ocp_squadleader",
            "rhsusf_army_ocp_teamleader",
            "rhsusf_army_ocp_grenadier",
            "rhsusf_army_ocp_rifleman",
            "rhsusf_army_ocp_teamleader",
            "rhsusf_army_ocp_machinegunner",
            "rhsusf_army_ocp_machinegunnera",
            "rhsusf_army_ocp_marksman",
            "rhsusf_army_ocp_rifleman"
        ],
        [
            "RHS_M2A3_wd"
        ]
    ]]
];
publicVariable "BLUFOR_ASSAULT_SQUADS";

BLUFOR_CONVOY_SQUADS =
[
    [0,
        [
            "rhsusf_m998_w_4dr_fulltop",
            [
                "rhsusf_army_ocp_squadleader",
                "rhsusf_army_ocp_teamleader",
                "rhsusf_army_ocp_rifleman",
                "rhsusf_army_ocp_autorifleman",
                "rhsusf_army_ocp_grenadier",
                "rhsusf_army_ocp_riflemanat",
                "rhsusf_army_ocp_autorifleman"
            ],
            [
                "rhsusf_m998_w_2dr_fulltop",
                "rhsusf_m998_w_2dr_fulltop"
            ]
    ]],
    [100,
        [
            "rhsusf_m113_usarmy",
            [
                "rhsusf_army_ocp_squadleader",
                "rhsusf_army_ocp_teamleader",
                "rhsusf_army_ocp_rifleman",
                "rhsusf_army_ocp_autorifleman",
                "rhsusf_army_ocp_grenadier",
                "rhsusf_army_ocp_riflemanat",
                "rhsusf_army_ocp_autorifleman"
            ],
            [
                "rhsusf_m998_w_2dr_fulltop",
                "rhsusf_m998_w_2dr_fulltop",
                "rhsusf_m998_w_4dr_fulltop"
            ]
    ]],
    [200,
       [
           "",
           [
                "rhsusf_army_ocp_squadleader",
                "rhsusf_army_ocp_teamleader",
                "rhsusf_army_ocp_rifleman",
                "rhsusf_army_ocp_autorifleman",
                "rhsusf_army_ocp_grenadier",
                "rhsusf_army_ocp_riflemanat",
                "rhsusf_army_ocp_autorifleman"
            ],
            [
                "rhsusf_m113_usarmy",
                "RHS_M2A3_wd",
                "rhsusf_m998_w_2dr_fulltop",
                "rhsusf_m998_w_2dr_fulltop",
                "rhsusf_m998_w_4dr_fulltop"
            ]
     ]]
];
publicVariable "BLUFOR_CONVOY_SQUADS";
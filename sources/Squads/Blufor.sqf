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
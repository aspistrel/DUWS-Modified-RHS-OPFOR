_place   =   _this select 0;
_points =   _this select 1;
_markername = _this select 2;    //MARKER ICON
_markername2 = _this select 3;   //MARKER ELLIPSE
_triggerPos = _this select 4;
_attackerSide = _this select 5;  // WEST or EAST

if(_attackerSide == west) then
{
    // TELL THE ZONE IS UNDER BLU CONTROL
    WARCOM_zones_controled_by_BLUFOR = WARCOM_zones_controled_by_BLUFOR + [_triggerPos];
    publicVariable "WARCOM_zones_controled_by_BLUFOR";

    // TELL THE ZONE IS REMOVED FROM OPFOR CONTROL
    WARCOM_zones_controled_by_OPFOR = WARCOM_zones_controled_by_OPFOR - [_triggerPos];
    publicVariable "WARCOM_zones_controled_by_OPFOR";
    
    PAPABEAR sidechat ("" + (str _attackerSide) + " " + (str PlayableSide));

    if(PlayableSide == _attackerSide) then
    {
        amount_zones_captured = amount_zones_captured + 1;
        [["us_takencontrol",[_place]],"bis_fnc_showNotification"] call BIS_fnc_MP;

        zoneundercontrolplayer = zoneundercontrolplayer + 1;
        publicVariable "zoneundercontrolplayer";

        WARCOM_opfor_ap = WARCOM_opfor_ap - (_points/2);
        WARCOM_blufor_ap = WARCOM_blufor_ap + _points;
        // ADD Skill to operatives
        _operHandler = []execVM "dialog\operative\operative_mission_complete.sqf";

        str(_markername) setMarkerColor "ColorGreen";
        str(_markername2) setMarkerColor "ColorGreen";

        if (isServer) then {
        commandpoints = commandpoints + (_points/2);
        publicVariable "commandpoints";
        };

        ["CPadded_retaken",[(_points/2)]] call bis_fnc_showNotification;
    }
    else
    {
        amount_zones_captured = amount_zones_captured - 1;
        [["us_lostcontrol",[_place]],"bis_fnc_showNotification"] call BIS_fnc_MP;

        // MODIFY NUMBER OF CONTROLLED ZONES
        zoneundercontrolplayer = zoneundercontrolplayer - 1;
        publicVariable "zoneundercontrolplayer";

        // MODIFY ARMY POWER
        WARCOM_opfor_ap = WARCOM_opfor_ap + _points;
        WARCOM_blufor_ap = WARCOM_blufor_ap - (_points/2);
        publicVariable "WARCOM_blufor_ap";
        publicVariable "WARCOM_opfor_ap";
    };

    // RECALL VARNAME FOR ZONE TRIGGER --> use the pos of the trigger
    private "_trg";
    call compile format["_trg = trigger%1%2", (_triggerPos select 0), (_triggerPos select 1)];
    //// MAKE THE TRIGGER CAPTURABLE FOR OPFOR
    _trg setTriggerActivation["EAST SEIZED","PRESENT",true];
    _trg setTriggerStatements["this", format["[""%1"",%2,""%3"",""%4"",%5,%6] execvm 'zonescap\capture.sqf'",_place,_points,_markername,_markername2,_triggerPos, east], ""];
};

if(_attackerSide == east) then
{
    // TELL THE ZONE IS UNDER OPF CONTROL
    WARCOM_zones_controled_by_OPFOR = WARCOM_zones_controled_by_OPFOR + [_triggerPos];
    publicVariable "WARCOM_zones_controled_by_OPFOR";

    // TELL THE ZONE IS REMOVED FROM BLUFOR CONTROL
    WARCOM_zones_controled_by_BLUFOR = WARCOM_zones_controled_by_BLUFOR - [_triggerPos];
    publicVariable "WARCOM_zones_controled_by_BLUFOR";

    if(PlayableSide == _attackerSide) then
    {
        amount_zones_captured = amount_zones_captured + 1;
        [["us_takencontrol",[_place]],"bis_fnc_showNotification"] call BIS_fnc_MP;

        zoneundercontrolplayer = zoneundercontrolplayer + 1;
        publicVariable "zoneundercontrolplayer";

        WARCOM_opfor_ap = WARCOM_opfor_ap + _points;
        WARCOM_blufor_ap = WARCOM_blufor_ap - (_points/2);
        // ADD Skill to operatives
        _operHandler = []execVM "dialog\operative\operative_mission_complete.sqf";

        str(_markername) setMarkerColor "ColorGreen";
        str(_markername2) setMarkerColor "ColorGreen";

        if (isServer) then {
        commandpoints = commandpoints + (_points/2);
        publicVariable "commandpoints";
        };

        ["CPadded_retaken",[(_points/2)]] call bis_fnc_showNotification;
    }
    else
    {
        amount_zones_captured = amount_zones_captured - 1;
        [["us_lostcontrol",[_place]],"bis_fnc_showNotification"] call BIS_fnc_MP;

        // MODIFY NUMBER OF CONTROLLED ZONES
        zoneundercontrolplayer = zoneundercontrolplayer - 1;
        publicVariable "zoneundercontrolplayer";

        // MODIFY ARMY POWER
        WARCOM_opfor_ap = WARCOM_opfor_ap + _points;
        WARCOM_blufor_ap = WARCOM_blufor_ap - (_points/2);
        publicVariable "WARCOM_blufor_ap";
        publicVariable "WARCOM_opfor_ap";
    };

    // RECALL VARNAME FOR ZONE TRIGGER --> use the pos of the trigger
    private "_trg";
    call compile format["_trg = trigger%1%2", (_triggerPos select 0), (_triggerPos select 1)];
    //// MAKE THE TRIGGER CAPTURABLE FOR BLUFOR
    _trg setTriggerActivation["WEST SEIZED","PRESENT",true];
    _trg setTriggerStatements["this", format["[""%1"",%2,""%3"",""%4"",%5, %6] execvm 'zonescap\capture.sqf'",_place,_points,_markername,_markername2,_triggerPos, west], ""];
};
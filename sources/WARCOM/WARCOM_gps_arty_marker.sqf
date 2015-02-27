_group = _this select 0;
_TFname = _this select 1;
_artyIndex = _this select 2;
_side = _this select 3;

[_group, _TFname, _artyIndex, _side] spawn
{
    _group = _this select 0;
    _TFname = _this select 1;
    _artyIndex = _this select 2;
    _side = _this select 3;
    _loop = true;


    _leader = leader _group;
    // create marker on leader
    _markername = format["WARCOM%1",WARCOM_marker_num]; // Define marker name
    _markerstr = createMarker [str(_markername), getpos _leader];
    _markerstr setMarkerShape "ICON";
    str(_markername) setMarkerType "loc_Tree";
    str(_markername) setMarkerColor "ColorBlue";
    str(_markername) setMarkerText format["Artillery %1",_TFname];
    WARCOM_marker_num = WARCOM_marker_num + 1;

        while {_loop} do {
        _units_alive = {alive _x }count units _group;
        if (_units_alive<=0) exitWith {  // IF ALL DEAD, EXIT.
        str(_markername) setMarkerColor "ColorRed";
        str(_markername) setMarkerType "waypoint";
        PAPABEAR sidechat format["To all units, this is HQ, Artillery team %1 just got wiped out. Stay alert",_TFname];

        if(_side == east) then
        {
            WARCOM_opf_arty_squads = WARCOM_opf_arty_squads - (WARCOM_opf_arty_squads select _artyIndex);
            WARCOM_opf_arty_cd_time set [_artyIndex, -1];
        }
        else
        {
            WARCOM_blu_arty_squads = WARCOM_blu_arty_squads - (WARCOM_blu_arty_squads select _artyIndex);
            WARCOM_blu_arty_cd_time set [_artyIndex, -1];
        };

        sleep 600;
        deleteMarker str(_markername);
        };
        _leader = leader _group;
        str(_markername) setMarkerPos getpos _leader;
        sleep 4;
        };


};


// fin du script
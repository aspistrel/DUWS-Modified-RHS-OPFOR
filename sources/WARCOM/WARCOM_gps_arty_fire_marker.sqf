_pos = _this select 0;
_side = _this select 1;

[_pos, _side] spawn {
    _pos = _this select 0;
    _side = _this select 1;
    _loop = true;

    if((PlayableSide == west) && (_side == west)) then
    {
        [[PAPABEAR, "This is HQ, We have detected enemy artillery team. Check your map. We will send troops to attack them as soon as possible."],"sidechat",nil,false] call BIS_fnc_MP;
        hint "You have new markers on your map.";
    };

    if ((PlayableSide == east) && (_side == east)) then
    {
        [[PAPABEAR, "This is Eagle, We have detected enemy artillery team. Check your map. We will send troops to attack them as soon as possible"],"sidechat",nil,false] call BIS_fnc_MP;
        hint "You have new markers on your map.";
    };

    // create marker on leader
    _markername = format["WARCOM%1",WARCOM_marker_num]; // Define marker name
    _markerstr = createMarker [str(_markername), _pos];
    str(_markername) setMarkerShape "ELLIPSE";
    str(_markername) setMarkerBrush "FDiagonal";
    str(_markername) setMarkerAlpha 0.1;
    str(_markername) setMarkerColor "ColorRed";
    str(_markername) setMarkerSize [250, 250];
    str(_markername) setMarkerText format["Enemy artillery nearby (%1:%2)", (date select 3), (date select 4)];
    WARCOM_marker_num = WARCOM_marker_num + 1;

    sleep 300;
    deleteMarker str(_markername);



};


// fin du script
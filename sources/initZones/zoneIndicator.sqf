InitZoneIndicator = {

    {
        _currentIndex = _forEachIndex;

        _pos = ZoneCapturePos select _currentIndex;
        _size = ZoneCaptureMax select _currentIndex;
        _place = ZoneCaptureNames select _currentIndex;

        _trg =createTrigger["EmptyDetector",_pos];
        _trg triggerAttachVehicle [player];
        _trg setTriggerArea[_size,_size,0,false];
        _trg setTriggerActivation["VEHICLE","PRESENT",true];
        _trg setTriggerStatements["this", format["[""%1"",thislist, %2] execVM 'enterlocation.sqf'",_place, _currentIndex], ""];

    } forEach ZoneCapturePos;

    player globalchat "Capture indicator initialized !";

    _warcom_loop = [] execVM "WARCOM\WARCOM_zone_loop.sqf"; // zone capture indicator

};
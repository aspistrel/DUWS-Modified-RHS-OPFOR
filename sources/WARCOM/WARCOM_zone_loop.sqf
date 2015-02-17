if(isServer) then
{
    [] spawn {
        // [position, max points, time, opfor count, blufor count, current points];

        while{true} do
        {

            {
                _currentIndex = _forEachIndex;

                _currentPos = _x;
                _currentMaxPoints = (ZoneCaptureMax select _forEachIndex);
                _currentOpforCount = (ZoneCaptureOpforCount select _forEachIndex);
                _currentBluforCount = (ZoneCaptureBluforCount select _forEachIndex);
                _currentPoints = (ZoneCapturePoints select _forEachIndex);

                PAPABEAR sidechat ("SERVER: "+(str PlayerCurrentZoneIndex)+" "+(str _forEachIndex)+" "+(str _currentPos)+" "+(str _currentMaxPoints)+" "+(str _currentOpforCount)+" "+(str _currentBluforCount)+" "+(str _currentPoints));


                // limit to 10
                if(_currentOpforCount > 10) then
                {
                    _currentOpforCount = 10;
                };

                if(_currentBluforCount > 10) then
                {
                    _currentBluforCount = 10;
                };

                if(_currentPoints <= _currentMaxPoints && _currentPoints >= (-1*_currentMaxPoints)) then
                {
                    _currentPoints = _currentPoints + (_currentBluforCount)*0.5 - (_currentOpforCount)*0.5;

                    if(_currentPoints > _currentMaxPoints) then
                    {
                        _currentPoints = _currentMaxPoints;
                    };

                    if(_currentPoints < -1*_currentMaxPoints) then
                    {
                        _currentPoints = -1*_currentMaxPoints;
                    };
                };

                 ZoneCapturePoints set [_currentIndex, _currentPoints];
            } forEach ZoneCapturePos;


            publicVariable "ZoneCaptureOpforCount";
            publicVariable "ZoneCaptureBluforCount";
            publicVariable "ZoneCapturePoints";

            sleep 0.1;
        };
    };
};

[] spawn {

    disableSerialization;
    _barBlue = findDisplay 46 ctrlCreate ["RscProgress", -1];
    _barBlue ctrlSetPosition [0.25,-0.3,0.5,0.01];
    _barBlue ctrlSetTextColor [0, 0, 1, 1];

    _barRed = findDisplay 46 ctrlCreate ["RscProgress", -1];
    _barRed ctrlSetPosition [0.25,-0.3,0.5,0.01];
    _barRed ctrlSetTextColor [1, 0, 0, 1];

    _percent = findDisplay 46 ctrlCreate ["RscText", -1];
    _percent ctrlSetPosition [0.33,-0.28,0.5,0.1];

    _barBlue ctrlCommit 0;
    _barRed ctrlCommit 0;

    _percent ctrlCommit 0;

    while{true} do
    {
        if(PlayerCurrentZoneIndex != -1) then
        {
            _currentMaxPoints = (ZoneCaptureMax select PlayerCurrentZoneIndex);
            _currentPoints = (ZoneCapturePoints select PlayerCurrentZoneIndex);
            _currentOpforCount = (ZoneCaptureOpforCount select PlayerCurrentZoneIndex);
            _currentBluforCount = (ZoneCaptureBluforCount select PlayerCurrentZoneIndex);

            PAPABEAR sidechat ("CLIENT: "+(str PlayerCurrentZoneIndex)+" "+(str _currentMaxPoints)+" "+(str _currentOpforCount)+" "+(str _currentBluforCount)+" "+(str _currentPoints));

            if(_currentPoints > 0) then
            {
                _percent ctrlSetTextColor [0, 0, 1, 1];
                _percent ctrlSetText "Controlled by BLUFOR ("+(str _currentPoints)+" / "+(str _currentMaxPoints)+") "+_currentOpforCount+":"+_currentBluforCount;
                _barBlue progressSetPosition (_currentPoints / _currentMaxPoints);
                _barBlue progressSetPosition (_currentPoints / _currentMaxPoints);
            }
            else
            {
                _percent ctrlSetTextColor [1, 0, 0, 1];
                _percent ctrlSetText "Controlled by OPFOR ("+(str (_currentPoints * -1))+" / "+(str _currentMaxPoints)+") "+_currentOpforCount+":"+_currentBluforCount;
                _barRed progressSetPosition ((_currentPoints * -1) / _currentMaxPoints);
                _barRed progressSetPosition ((_currentPoints * -1) / _currentMaxPoints);
            };

            sleep 0.1;
        }
        else
        {
            _percent ctrlSetText "";
            _barBlue progressSetPosition (0);
            _barBlue progressSetPosition (0);
        };

    };
};
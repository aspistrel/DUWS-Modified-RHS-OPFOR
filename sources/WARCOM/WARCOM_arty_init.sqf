
[_this select 0, _this select 1] spawn {
    _hqPos = _this select 0;
    _side = _this select 1;


    sleep 25+(random 25);

    _artySquadIndex = 0;

    _artySquad = OPFOR_ARTILLERY_SQUAD;
    if(_side == west) then
    {
        _artySquad = BLUFOR_ARTILLERY_SQUAD;
    };

    while {true} do
    {
        aliveAllUnits = {alive _x} count allunits;
        waitUntil {sleep (random 1); ((aliveAllUnits < WARCOMLimitAI));};
        _returnedArray = [];

        if(EnemySide == _side) then
        {
            _found = false;
            _randomZone = [];
            _failSafe = 0;
            while {!_found} do
            {
                _randomZone = WARCOM_zones_controled_by_OPFOR call BIS_fnc_selectRandom;
                if(PlayableSide == east) then
                {
                    _randomZone = WARCOM_zones_controled_by_BLUFOR call BIS_fnc_selectRandom;
                };

                if (_randomZone distance player > 900) then {_found=true;};
                sleep 0.2;

                _failSafe = _failSafe + 1;
                if (_failsafe > 5) then {sleep 300; _failsafe = 0;}
            };

            // find a zone *** end///// Spawn Troops
            _randomZone = [(_randomZone select 0)+40,_randomZone select 1];

            _returnedArray = [_randomZone, _artySquad, _side, 0] call SpawnRhsSquad;
        }
        else
        {
            _returnedArray = [[(_hqPos select 0)+40,(_hqPos select 1)+40], _artySquad, _side, 0] call SpawnRhsSquad;
        };

        if(_side == east) then
        {
            _artySquadIndex = count WARCOM_opf_arty_squads;
            WARCOM_opf_arty_squads = WARCOM_opf_arty_squads + [_returnedArray];

            if((count WARCOM_opf_arty_cd_time) <= _artySquadIndex) then
            {
                WARCOM_opf_arty_cd_time = WARCOM_opf_arty_cd_time + [time];
            }
            else
            {
                WARCOM_opf_arty_cd_time set [_artySquadIndex, time];
            };
        }
        else
        {
            _artySquadIndex = count WARCOM_blu_arty_squads;
            WARCOM_blu_arty_squads = WARCOM_blu_arty_squads + [_returnedArray];

            if((count WARCOM_blu_arty_cd_time) <= _artySquadIndex) then
            {
                WARCOM_blu_arty_cd_time = WARCOM_blu_arty_cd_time + [time];
            }
            else
            {
                WARCOM_blu_arty_cd_time set [_artySquadIndex, time];
            };
        };

        {
            _vehUnit = vehicle (_x select 0);
            if(_side == PlayableSide) then
            {
                _vehUnit addEventHandler ["Fired", {[(getPos (_this select 0)), PlayableSide] call ArtyEvent;}];
            }
            else
            {
                _vehUnit addEventHandler ["Fired", {[(getPos (_this select 0)), EnemySide] call ArtyEvent;}];
            };
        } forEach (_returnedArray select 1);

        /*{
          [(_x select 0), position (_x select 0)] spawn Rhs_paradrop;
        } forEach (_returnedArray select 1);*/

        _group = (_returnedArray select 0);

        _TFname = [1] call compile preprocessFile "random_name.sqf";
        if(PlayableSide == west && _side == west) then
        {
            [[PAPABEAR, format["This is HQ, We are sending Artillery Platoon %1 to support our assault forces.",_TFname]],"sidechat",nil,false] call BIS_fnc_MP;
        };

        if (PlayableSide == east && _side == east) then
        {
            [[PAPABEAR, format["This is Eagle, We are sending Artillery Platoon %1 to support our assault forces.",_TFname]],"sidechat",nil,false] call BIS_fnc_MP;
        };

        _assault = [_group] execVM "WARCOM\WARCOM_wp_arty.sqf";
        _assault = [_group, _TFname, _artySquadIndex, _side] execVM "WARCOM\WARCOM_gps_arty_marker.sqf";

        if(PlayableSide != _side) then
        {
            _killcp = [] call cp_ehkilledwest;
        };

        sleep 2700+(random 300);

    };


              //_blu_assault = [_group,_randomZone] execVM "WARCOM\WARCOM_wp_blu.sqf";

};
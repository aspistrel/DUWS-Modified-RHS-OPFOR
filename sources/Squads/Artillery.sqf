ArtilleryFire = {
    [_this select 0, _this select 1] spawn
    {
        _firePos = _this select 0;
        _mortars = _this select 1;

        {
            _x commandArtilleryFire [
                _firePos,
                getArtilleryAmmo [_x] select 0,
                5
            ];
        } forEach _mortars;

        sleep 60;

        // rearm arty
        {
            _x setVehicleAmmo 1;
        } forEach _mortars;
    };

};

ArtilleryFire512Squad =
{
    [_this select 0, _this select 1] spawn
    {
        _firePos = _this select 0;
        _squad = _this select 1;

        {
            _vehUnit = vehicle (_x select 0);
            _vehUnit commandArtilleryFire [
                _firePos,
                getArtilleryAmmo [_vehUnit] select 0,
                5
              ];
        } forEach (_squad select 1);


        sleep 60;

        // rearm arty
        {
            vehicle (_x select 0) setVehicleAmmo 1;
        } forEach (_squad select 1);
    };
};

ArtyEvent = {
    [_this select 0, _this select 1] spawn
    {
        _pos = _this select 0;
        _side = _this select 1;

        sleep 10;

        if(_side != PlayableSide) then
        {
            _nul = [_pos, _side] execVM "WARCOM\WARCOM_gps_arty_fire_marker.sqf";
        };

        _index = 0;
        _search = true;
        _fail = false;

        while {_search} do
        {
            if(_side == west) then
            {
                if(((WARCOM_blu_arty_cd_time select _index) <= time) && (WARCOM_blu_arty_cd_time select _index >= 0)) then
                {
                    _search = false;
                }
                else
                {
                    _index = _index + 1;
                };

                if(_index > (count WARCOM_blu_arty_cd_time)-1) then
                {
                    _search = false;
                    _fail = true;
                };
            }
            else
            {
                if(((WARCOM_opf_arty_cd_time select _index) <= time) && (WARCOM_opf_arty_cd_time select _index >= 0)) then
                {
                    _search = false;
                }
                else
                {
                    _index = _index + 1;
                };

                if(_index > (count WARCOM_opf_arty_cd_time)-1) then
                {
                    _search = false;
                    _fail = true;
                };
            };

        };

        if(!_fail) then
        {
            _artySquad = WARCOM_blu_arty_squads call BIS_fnc_selectRandom;
            if(_side == west) then
            {
                _artySquad = WARCOM_opf_arty_squads call BIS_fnc_selectRandom;
            };

            [_pos, _artySquad] call ArtilleryFire512Squad;

            if(_index >= 0) then
            {
                if(_side == west) then
                {
                    WARCOM_blu_arty_cd_time set [_index, time+120];
                }
                else
                {
                    WARCOM_opf_arty_cd_time set [_index, time+120];
                };
            };
        }
        else
        {
            [[PAPABEAR, ""],"sidechat",nil,false] call BIS_fnc_MP;
        };
    };

};
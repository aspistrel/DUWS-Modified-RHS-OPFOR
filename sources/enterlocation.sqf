_place   =   _this select 0; 
_trigger =   _this select 1;
_index =     _this select 2;

sleep 0.5;

PlayerCurrentZoneIndex=_index;
publicVariable "PlayerCurrentZoneIndex";
["location_enter",[_place]] call bis_fnc_showNotification;


waitUntil {
sleep 1;
count _trigger < 1;
};

PlayerCurrentZoneIndex=-1;
publicVariable "PlayerCurrentZoneIndex";

["location_leave",[_place]] call bis_fnc_showNotification;
   


// CP every 30 mins (1800) 

_undercontrol = true;

 

while {_undercontrol} do {

 waitUntil {sleep 60;zoneundercontrolplayer > 0};  // make sure there is at least 1 zone under control
 sleep 1800;
 waitUntil {sleep 60;zoneundercontrolplayer > 0}; // check if there is still at least 1 zone under control
 ["CPzonehold",[(zoneundercontrolplayer*3),zoneundercontrolplayer]] call bis_fnc_showNotification;
 commandpoints = commandpoints + (zoneundercontrolplayer*3);
 publicVariable "commandpoints";
 ctrlSetText [1000, format["%1",commandpoints]];
 
};


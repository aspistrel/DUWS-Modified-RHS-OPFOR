
_id = _this select 2;
_chopperArray = _this select 3;
_pilot = _chopperArray select 0;
_copilot = _chopperArray select 1;
_helo = _chopperArray select 2;

hint "Taxi will self destruct in:\n\n:05";sleep 1;
hint "Taxi will self destruct in:\n\n:04";sleep 1;
hint "Taxi will self destruct in:\n\n:03";sleep 1;
hint "Taxi will self destruct in:\n\n:02";sleep 1;
hint "Taxi will self destruct in:\n\n:01";sleep 1;
hint "Taxi will self destruct in:\n\n:00";sleep 1;

deleteVehicle _pilot;
deleteVehicle _copilot;
_helo setDamage 1;
player removeAction _id;

sleep 2; 




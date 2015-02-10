//hint format ["%1",WARCOM_zones_controled_by_OPFOR];
//sleep 5;
//hint format ["%1",WARCOM_zones_controled_by_BLUFOR];
//sleep 5;

if (commandpoints<2) exitWith
{
  ["info",["Not enough command points","Not enough Command Points (2CP required)"]] call bis_fnc_showNotification;
};

commandpoints = commandpoints - 2;

player setdammage 0;
{_x setdammage 0} forEach units group player;
hint "You and your squad members have been fully healed";



if (commandpoints>=1) exitWith  
{
  commandpoints = commandpoints - 1;
  publicVariable "commandpoints";
enableSaving true;
sleep 0.1;
saveGame;
enableSaving false;
  sleep 0.5;
  ["sitrepinfo",["SITREP","The game has been saved"]] call bis_fnc_showNotification;
  if(PlayableSide == west) then
  {
    PAPABEAR sidechat format["SITREP received, we have %1 command points and our army power is at %2",commandpoints,WARCOM_blufor_ap];
  }

  if(PlayableSide == east) then
  {
    PAPABEAR sidechat format["SITREP received, we have %1 command points and our army power is at %2",commandpoints,WARCOM_opfor_ap];
  }
  sleep 1;
[] execVM "misc\bottom_right_message.sqf";
};

  ["sitrepinfo",["SITREP","Not enough Command Points (1CP)"]] call bis_fnc_showNotification;
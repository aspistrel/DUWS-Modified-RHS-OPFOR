_fob = _this select 0;


_fob addAction ["<t color='#ffbe1a'>Player Stats</t>","dialog\info\info.sqf", "", 0, true, true, "", "_this == player"];
_fob addAction ["<t color='#ff0066'>Heal (2CP)</t>", "heal.sqf", "", 0, true, true, "", "_this == player"];
 if (support_armory_available) then {_fob addAction ["<t color='#ff0066'>Armory 1 (VAS)</t>","VAS\open.sqf", "", 0, true, true, "", "_this == player"];};
if (support_armory_available) then {_fob addAction ["<t color='#ff0066'>Armory 2 (VA)</t>","va.sqf", "", 0, true, true, "", "_this == player"];};
if (support_halo_available) then {_fob addAction ["<t color='#15ff00'>HALO Alone (5CP)</t>", "ATM_airdrop\atm_airdrop.sqf", "", 0, true, true, "", "_this == player"];};
if (support_halo_available) then {_fob addAction ["<t color='#15ff00'>HALO Group (5CP)</t>", "COB_HALO\grphalo.sqf", "", 0, true, true, "", "_this == player"];};
_fob addAction ["<t color='#15ff00'>FOB/Teleport</t>","dialog\fob\FOBmanageropen.sqf", "", 0, true, true, "", "_this == player"];
_fob addAction ["<t color='#99ff00'>REQUESTS MENU>></t>","dialog\request_fob.sqf", "", 6, true, true, "", "_this == player"];
_fob addAction ["<t color='#ffb700'>Squad Manager</t>","dialog\squad\squadmng.sqf", "", 0, true, true, "", "_this == player"];
// _fob addAction ["<t color='#ff0066'>Request ammobox drop(2CP)</t>","support\fob_ammobox.sqf", "", 0, true, true, "", "_this == player"];
if (isServer) then {
_fob addAction ["<t color='#ffbe1a'>Rest (wait/save)</t>","savegame.sqf", "", 0, true, true, "", "_this == player"];
};
if (!isServer) then {
_fob addAction ["<t color='#ffbe1a'>Rest</t>","savegameClient.sqf", "", 0, true, true, "", "_this == player"];
};



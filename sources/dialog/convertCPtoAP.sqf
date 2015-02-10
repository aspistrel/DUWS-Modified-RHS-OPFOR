if (commandpoints < 10) exitWith {hint "You don't have enough CP to convert into AP";};

commandpoints = commandpoints - 10;

ctrlSetText [1000, format["%1",commandpoints]];
if(PlayableSide == west) then
{
    WARCOM_blufor_ap = WARCOM_blufor_ap + 15;
    ctrlSetText [1002, format["%1",WARCOM_blufor_ap]];
}

if(PlayableSide == east) then
{
    WARCOM_opfor_ap = WARCOM_opfor_ap + 15;
    ctrlSetText [1002, format["%1",WARCOM_opfor_ap]];
}



publicVariable "commandpoints";
publicVariable "WARCOM_blufor_ap";
publicVariable "WARCOM_opfor_ap";

hint "Conversion successful";


_currentSideAp = 0;

if(PlayableSide == west) then
{
    _currentSideAp = WARCOM_blufor_ap;
};

if(PlayableSide == east) then
{
    _currentSideAp = WARCOM_opfor_ap;
};

if ((_currentSideAp<175) || (commandpoints < 5)) exitWith {
hint format ["Recon Camera Required Minimums:\n175AP (army power)\n5CP (command points)\n\nYour Current AP is: %1\nYour Current CP is: %2",_currentSideAp,commandpoints];
sleep 1;
_camera = [player,"cam"] call BIS_fnc_addCommMenuItem;
Camera = _camera;
};

CamInUse = true; 
private "_time";
_time = 60;

BIS_fnc_feedback_allowPP = false;
commandpoints = commandpoints - 5;
publicVariable "commandpoints";
ctrlSetText [1000, format["%1",commandpoints]];

cutRsc ["RscSpectator", "PLAIN"];
TitleText ["*** RECON CAMERA SYSTEM ACTIVATED FOR 60 SECONDS ***\nUSE SPACEBAR, THEN MAP CLICKS TO QUICKLY VIEW ANY LOCATION\n\nUSE SPACEBAR: Free Roam Camera\n- use H for help -", "PLAIN"];titleFadeOut 30;
	
     
while {_time > 0} do {

	_time = _time - 1;  
	hint format["Camera Time Remaining: \n %1", [_time,"HH"] call BIS_fnc_timetostring];	
	if (_time <= 0) exitWith{	
	BIS_fnc_feedback_allowPP = true;
	cutText ["", "PLAIN"];
	titleFadeOut 1;
	hint "";
	sleep 300;
	_camera = [player,"cam"] call BIS_fnc_addCommMenuItem;
	Camera = _camera;
	CamInUse = false;
	};
	sleep 1;
};

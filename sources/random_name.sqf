_length = _this select 0;


_operation = "Operation ";
_first = "--blank--";

if (_length==0) then {
_first_dice = round (random 52);

if(_first_dice > 52) then
{
    _first_dice = 52;
};

if(_first_dice < 0) then
{
    _first_dice = 0;
};

_firstArray = ["Homing ",
"Flaming ",
"Screaming ",
"Final ",
"Fiery ",
"Brave ",
"Hardened ",
"Crazy ",
"Last ",
"Raging ",
"Blazing ",
"Covered ",
"Smoking ",
"Firing ",
"Mobile ",
"Crimson ",
"Broken ",
"Lightning ",
"Surviving ",
"Enduring ",
"Hunting ",
"Killing ",
"Fragging ",
"Overwhelming ",
"Thrusting ",
"Lone ",
"Armed ",
"Banned ",
"Sleeping ",
"Retired ",
"Retaliating ",
"Rushing ",
"Burning ",
"Striking ",
"Sweeping ",
"Masterful ",
"Mourning ",
"Black ",
"Yellow ",
"Purple ",
"Turquoise ",
"Red ",
"Green ",
"Blue ",
"Smashing ",
"Drowned ",
"Swift ",
"Courageous ",
"Fearful ",
"Barking ",
"Ruthless ",
"Rightful "
];

_first = (_firstArray select (_first_dice-1));
};




_second = "--blank--";
_second_dice = round (random 67);
if(_second_dice > 67) then
{
    _second_dice = 67;
};

if(_second_dice < 0) then
{
    _second_dice = 0;
};

_secondArray = ["Switchblade","Knight","Guardian","Trident","Wraith","Rage","Hawk","Thunder","Poltergeist","Steel","Grave","Shield","Iron","Assault","Arrow","Bolt","Freedom","Sword","Lance","Witch",
"Nightmare","Force","Lion","Claw","Wolf","Blade","Sabre","Warrior","God","Cannon","Vengeance","Dagger","Fist","Warlock","Copper","Bronze","Talon","Viper","Cobra","Falcon","Eagle","Onslaught","Phoenix",
"Raven","Dragon","Crusader","Devil","Angel","Hammer","Cleaver","Nova","Marauder","Dart","Rodent","Swordfish","Boar","Rhino","Shark","Goul","Anvil","Star","Sun","Morgenstern","Gladius",
"Chieftain","Spirit","Paladin"];

_second = (_secondArray select (_second_dice-1));


if (_length==1) exitWith {
_second
};

if (_length==0) then {
_gen_operation_fullname = _operation+_first+_second;
_gen_operation_fullname
};




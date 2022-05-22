// MCA_fn_initPlayer.sqf.

params ["_unit", "_didJIP"];

// DEBUG.
diag_log format ["In MCA_fn_initPlayer: _unit=%1, _didJIP=%2, time is %3.", _unit, _didJIP, time];

removeAllWeapons _unit;
_unit removeWeapon "NVGoggles";
_unit removeWeapon "Binocular";
_unit removeWeapon "ItemGPS";

removeGoggles _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

_unit addWeapon "ItemMap";

if (side _unit == west) then
{
	_unit addUniform "U_B_T_Soldier_F";
	_unit addWeapon "NVGoggles_tna_F";
};

if (side _unit == east) then
{
	_unit addUniform "U_O_T_Soldier_F";
	_unit addWeapon "NVGoggles";
};

// DEBUG.
diag_log format ["MCA_fn_initPlayer ends: _unit=%1, HMD=%2, time is %3.", _unit, hmd _unit, time];

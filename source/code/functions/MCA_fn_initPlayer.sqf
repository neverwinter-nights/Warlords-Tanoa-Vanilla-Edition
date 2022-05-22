// MCA_fn_initPlayer.sqf.

params ["_unit", "_didJIP"];

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

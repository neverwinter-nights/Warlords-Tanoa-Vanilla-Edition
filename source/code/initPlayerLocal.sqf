// https://community.bistudio.com/wiki/Event_Scripts#initPlayerLocal.sqf

params ["_player", "_didJIP"];

_player addEventHandler 
[
	"Respawn", 
	{
		params ["_unit", "_killer"];
		[_unit, _didJIP] call MCA_fnc_initPlayer;
	}
];

[_player, _didJIP] call MCA_fnc_initPlayer;

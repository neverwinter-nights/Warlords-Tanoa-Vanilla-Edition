// https://community.bistudio.com/wiki/Event_Scripts#initPlayerLocal.sqf

params ["_player", "_didJIP"];

_player addEventHandler 
[
	"Respawn", 
	{
		params ["_unit", "_killer"];
		[_unit, _didJIP] call MCA_fn_initPlayer;
		_unit addAction [ "Init", { systemChat "Init"; } ]; //DEBUG.
	}
];

[_player, _didJIP] call MCA_fn_initPlayer;

_player addAction [ "Init", { systemChat "Init"; } ]; //DEBUG.

params ["_player", "_didJIP"];

_player addEventHandler 
[
	"Respawn", 
	{
		params ["_unit", "_killer"];
		_unit call MCA_fn_initPlayer;
	}
];

_player call MCA_fn_initPlayer;

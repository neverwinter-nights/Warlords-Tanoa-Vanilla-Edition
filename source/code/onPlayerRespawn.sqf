params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

waitUntil { !isNull player };

_newUnit call MCA_fn_initPlayer;

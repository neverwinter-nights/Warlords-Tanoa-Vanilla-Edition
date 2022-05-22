params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// If the computer is not a real player
// (e.g. if it is a dedicated server or a headless client),
// exit the script.
if (!hasInterface) exitWith {};

_newUnit call MCA_fn_initPlayer;

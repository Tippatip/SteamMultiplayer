// Inherit the parent event
event_inherited();

// When button selected
selectAction = function() {
    // Create server instance in room
	global.server = instance_create_depth(0,0,0,obj_Server)
    // Creat the lobby
    steam_lobby_create(steam_lobby_type_public, 4);
}
// Triggered if an asynchronous steam event occurs
// Check the event type of the async event
switch (async_load[? "event_type"]) {
	 // If the lobby is created
    case "lobby_created" :
        // Show message showing lobby created and its id
        show_debug_message("Lobby created: " + string(steam_lobby_get_lobby_id()))
        // Play joins the created lobby
        steam_lobby_join_id(steam_lobby_get_lobby_id())
    break
    
    // If a lobby was joined
    case "lobby_joined":
        if (steam_lobby_is_owner()) {
            // Store data on steam lobby
            steam_lobby_set_data("isGameMakerTest", "true");
            // Store game creator on steam lobby
            steam_lobby_set_data("Creator", steam_get_persona_name());
        }
    // Take player to room
    room_goto(rm_GameRoom)
    
    break
    
}
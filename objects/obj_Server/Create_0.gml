// Initiate server variables

// List of players in the lobby
playerList = [];

// Get steam ID and name to distinguish host
steamID = steam_get_user_steam_id();
steamName = steam_get_persona_name();

// To reference character controlled by server
character = undefined;

// Player list information
playerList[0] = {
    steamID       : steamID,
    steamName     : steamName,
    lobbyMemberID : 0,
    character     : undefined,
    startPos      : grab_spawn_point(0) // Get start position of players for reference
}
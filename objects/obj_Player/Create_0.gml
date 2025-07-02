/// @description Setup Player

// Get steam user id for this client
localSteamID = steam_get_user_steam_id()
// Set is local to true if the local steam id is equal to the steam id iterated to
isLocal = (localSteamID == steamID)
lobbyMemberID = 0

moveSpeed = 5
fireCooldown = 50
currentCooldown = 0

init_controls()
// On room start, the server should spawn all the players, not the clients

// Spawn asign layer for player layer
var _playerLayer = layer_get_id("Instances")

// For each player in the player list
for (var _player = 0; _player < array_length(playerList); _player++) {
    // Get the spawn position
    var _pos = grab_spawn_point(_player)
    // Create instance of the player at the spawn position on the player layer
    var _inst = instance_create_layer(_pos.x, _pos.y, _playerLayer, obj_Player, {
        // Give values to the player instance
        steamName     : playerList[_player].steamName,
        steamID       : playerList[_player].steamID,
        lobbyMemberID : _player
    })
    // Set instance and position as value of the player list items
    playerList[_player].character = _inst
    playerList[_player].startPos = _pos
    // Set character as the instance spawned for this client
    if (playerList[_player].steamID == steamID) then character = _inst
        
}
// Function to find player spawn point
function grab_spawn_point(_player){
    // Create variable that takes the first instance of specified player
    var _spawnPoint = instance_find(obj_SpawnPoint, _player)
    if (_spawnPoint == noone) return {x:0, y:0} // In the case no spawn point is found, return origin 
    return {x:_spawnPoint.x, y:_spawnPoint.y} // Otherwise provide the spawn point
}
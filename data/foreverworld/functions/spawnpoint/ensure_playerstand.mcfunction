# Must run as a specific player. Should only be called just prior to setting location of playerstand
# Finds that player's "playerstand", and creates a new one if none are found (eg: out of render distance)
function foreverworld:spawnpoint/find_playerstand
execute unless entity @e[tag=foreverworld_playerstand_found] run function foreverworld:spawnpoint/create_playerstand
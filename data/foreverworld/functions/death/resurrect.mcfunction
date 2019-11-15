# Must run as a specific player.
# Begins the game
tellraw @s[tag=foreverworld_debug] {"text":"foreverworld:death/resurrect"}

# Reset to begining-of-day (you may wish to remove this for multiplayer)
function foreverworld:sunrise

# Clear Inventory (shouldn't be necessary, but good for the initial run)
clear @s

# Teleport to a random position within the world
function foreverworld:spawnpoint/new

gamemode survival @s
tag @s remove foreverworld_died
tag @s remove foreverworld_died_fake
tag @s remove foreverworld_death_cleared
tag @s remove foreverworld_death_ready

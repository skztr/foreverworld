# Must run as a specific player
# Sets the current player's playerstand to the current player's location
function foreverworld:spawnpoint/ensure_playerstand

execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/begin
execute if entity @s[tag=foreverworld_debug] as @e[tag=foreverworld_playerstand_found] run function foreverworld:test/debug/location
execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/end

execute if entity @e[tag=foreverworld_playerstand_found] at @s run tp @e[tag=foreverworld_playerstand_found] ~ ~ ~

execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/begin
execute if entity @s[tag=foreverworld_debug] as @e[tag=foreverworld_playerstand_found] run function foreverworld:test/debug/location
execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/end

execute if entity @e[tag=foreverworld_playerstand_found] run tag @s remove foreverworld_playerstand_needed

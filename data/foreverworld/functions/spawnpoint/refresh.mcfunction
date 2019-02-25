# Must run as a specific player
# Sets the current player's spawnpoint to the location of the current player's playerstand
execute in overworld run function foreverworld:spawnpoint/find_playerstand

execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/begin
execute if entity @s[tag=foreverworld_debug] run title @s reset
execute if entity @s[tag=foreverworld_debug] as @e[tag=foreverworld_playerstand_found] run function foreverworld:test/debug/location_actionbar
execute if entity @s[tag=foreverworld_debug] unless entity @e[tag=foreverworld_playerstand_found] run title @s actionbar {"text":"playerstand not found"}
execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/end

execute in overworld at @e[type=minecraft:armor_stand,tag=foreverworld_playerstand_found,limit=1] run spawnpoint @s ~ ~ ~

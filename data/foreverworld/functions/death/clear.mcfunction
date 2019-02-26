# Must run as a specific player.
# Removes all that the player has obtained in their previous life.
tellraw @s[tag=foreverworld_debug] {"text":"foreverworld:death/clear"}

# Remove spawnpoint: Respawn into the death chamber
function foreverworld:spawnpoint/find_playerstand
execute in overworld at @e[tag=foreverworld_marker] if entity @e[tag=foreverworld_playerstand_found] run tp @e[tag=foreverworld_playerstand_found] ~ ~ ~

execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/begin
execute if entity @s[tag=foreverworld_debug] as @e[tag=foreverworld_playerstand_found] run function foreverworld:test/debug/location
execute if entity @s[tag=foreverworld_debug] run function foreverworld:test/debug/once/end

execute in overworld at @e[tag=foreverworld_marker] run spawnpoint @s ~ ~ ~

# Revoke all Advancements
advancement revoke @s everything

# The dead have never seen the Dragon
tag @s remove foreverworld_player_dragon_view
tag @s remove foreverworld_player_dragon_ritual

# Clear EnderChest
replaceitem entity @s enderchest.0 minecraft:air
replaceitem entity @s enderchest.1 minecraft:air
replaceitem entity @s enderchest.2 minecraft:air
replaceitem entity @s enderchest.3 minecraft:air
replaceitem entity @s enderchest.4 minecraft:air
replaceitem entity @s enderchest.5 minecraft:air
replaceitem entity @s enderchest.6 minecraft:air
replaceitem entity @s enderchest.7 minecraft:air
replaceitem entity @s enderchest.8 minecraft:air
replaceitem entity @s enderchest.9 minecraft:air
replaceitem entity @s enderchest.10 minecraft:air
replaceitem entity @s enderchest.11 minecraft:air
replaceitem entity @s enderchest.12 minecraft:air
replaceitem entity @s enderchest.13 minecraft:air
replaceitem entity @s enderchest.14 minecraft:air
replaceitem entity @s enderchest.15 minecraft:air
replaceitem entity @s enderchest.16 minecraft:air
replaceitem entity @s enderchest.17 minecraft:air
replaceitem entity @s enderchest.18 minecraft:air
replaceitem entity @s enderchest.19 minecraft:air
replaceitem entity @s enderchest.20 minecraft:air
replaceitem entity @s enderchest.21 minecraft:air
replaceitem entity @s enderchest.22 minecraft:air
replaceitem entity @s enderchest.23 minecraft:air
replaceitem entity @s enderchest.24 minecraft:air
replaceitem entity @s enderchest.25 minecraft:air
replaceitem entity @s enderchest.26 minecraft:air

tag @s add foreverworld_death_cleared

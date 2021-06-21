# Must run as a specific player.
# Removes all that the player has obtained in their previous life.
tellraw @s[tag=foreverworld_debug] {"text":"foreverworld:death/clear"}

# Remove spawnpoint: Respawn into the death chamber
execute in overworld at @e[tag=foreverworld_marker] run spawnpoint @s ~ ~ ~

# Revoke all Advancements
advancement revoke @s everything

# Clear all Recipes
recipe take @s *

# The dead have never seen the Dragon
tag @s remove foreverworld_player_dragon_view
tag @s remove foreverworld_player_dragon_ritual

# Clear EnderChest
item replace entity @s enderchest.0 with minecraft:air
item replace entity @s enderchest.1 with minecraft:air
item replace entity @s enderchest.2 with minecraft:air
item replace entity @s enderchest.3 with minecraft:air
item replace entity @s enderchest.4 with minecraft:air
item replace entity @s enderchest.5 with minecraft:air
item replace entity @s enderchest.6 with minecraft:air
item replace entity @s enderchest.7 with minecraft:air
item replace entity @s enderchest.8 with minecraft:air
item replace entity @s enderchest.9 with minecraft:air
item replace entity @s enderchest.10 with minecraft:air
item replace entity @s enderchest.11 with minecraft:air
item replace entity @s enderchest.12 with minecraft:air
item replace entity @s enderchest.13 with minecraft:air
item replace entity @s enderchest.14 with minecraft:air
item replace entity @s enderchest.15 with minecraft:air
item replace entity @s enderchest.16 with minecraft:air
item replace entity @s enderchest.17 with minecraft:air
item replace entity @s enderchest.18 with minecraft:air
item replace entity @s enderchest.19 with minecraft:air
item replace entity @s enderchest.20 with minecraft:air
item replace entity @s enderchest.21 with minecraft:air
item replace entity @s enderchest.22 with minecraft:air
item replace entity @s enderchest.23 with minecraft:air
item replace entity @s enderchest.24 with minecraft:air
item replace entity @s enderchest.25 with minecraft:air
item replace entity @s enderchest.26 with minecraft:air

tag @s add foreverworld_death_cleared

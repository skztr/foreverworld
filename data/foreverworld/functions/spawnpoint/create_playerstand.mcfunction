# Must run as a specific player.
# Creates a new playerstand
execute if entity @s[scores={fwpsid=0}] run function foreverworld:spawnpoint/create_playerstand_id

tag @e remove foreverworld_playerstand_found
execute at @e[tag=foreverworld_marker] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["foreverworld_playerstand","foreverworld_playerstand_found"], CustomName:"[{\"text\":\"foreverworld playerstand\"}]"}
scoreboard players operation @e[tag=foreverworld_playerstand_found] fwpsid = @s fwpsid

scoreboard players add @s fwpsinc 1
scoreboard players operation @e[tag=foreverworld_playerstand_found] fwpsinc = @s fwpsinc

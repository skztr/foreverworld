# Must run as a specific player.
# generates a new spawnpoint for the player
kill @e[type=minecraft:armor_stand,tag=foreverworld_playerstand]
tag @e[tag=foreverworld_spawnpoint] remove foreverworld_spawnpoint
tag @s add foreverworld_spawnpoint

# track iterations
scoreboard players set @s fwlocal 0

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["foreverworld_playerstand"], CustomName:"[{\"text\":\"foreverworld playerstand\"}]"}
execute as @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,limit=1] run function foreverworld:spawnpoint/new/spreadstand
function foreverworld:spawnpoint/first

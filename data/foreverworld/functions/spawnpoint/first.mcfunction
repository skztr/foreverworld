# Must run as a specific player.
# Returns the player to their "first, per death", spawnpoint
# Assumes the player is in the death chamber, but alive

kill @e[type=minecraft:armor_stand,tag=foreverworld_playerstand]
tag @e[tag=foreverworld_spawnpoint] remove foreverworld_spawnpoint
tag @s add foreverworld_spawnpoint

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["foreverworld_playerstand"], CustomName:"[{\"text\":\"foreverworld playerstand\"}]"}
execute as @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,limit=1] run function foreverworld:spawnpoint/first/movestand

execute at @s run spreadplayers ~ ~ 0 10 true @s
tag @e[tag=foreverworld_spawnpoint] remove foreverworld_spawnpoint

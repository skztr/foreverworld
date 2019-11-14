# Must run as a playerstand
# The target player must be tagged with foreverworld_spawnpoint
# Completes the process of choosing an initial spawnpoint for the player
# Executes as a function so that its commands can be bypassed easily in a loop

execute store result score @e[tag=foreverworld_spawnpoint,limit=1] fwspawnx run data get entity @s Pos[0]
execute store result score @e[tag=foreverworld_spawnpoint,limit=1] fwspawny run data get entity @s Pos[1]
execute store result score @e[tag=foreverworld_spawnpoint,limit=1] fwspawnz run data get entity @s Pos[2]
kill @s

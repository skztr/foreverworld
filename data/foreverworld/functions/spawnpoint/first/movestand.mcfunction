# Must run as a playerstand
# The target player must be tagged with foreverworld_spawnpoint

execute store result entity @s Pos[0] double 1.0 run scoreboard players get @e[tag=foreverworld_spawnpoint,limit=1] fwspawnx
execute store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=foreverworld_spawnpoint,limit=1] fwspawny
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @e[tag=foreverworld_spawnpoint,limit=1] fwspawnz
execute at @s run tp @e[tag=foreverworld_spawnpoint,limit=1] ~ ~ ~
kill @s

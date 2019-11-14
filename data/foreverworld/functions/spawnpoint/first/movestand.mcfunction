# Must run as a playerstand
# The target player must be tagged with foreverworld_spawnpoint
# Moves the playerstand to the target player's stored spawnpoint, then moves the
# player to the playerstand's new location. We do this because we cannot set the
# player's position directly. It needs to run in a function, and to run as the
# playerstand, because changing the position of the playerstand could move it
# out-of-range, which means it cannot be referenced using any specifier other
# than @s

execute store result entity @s Pos[0] double 1.0 run scoreboard players get @e[tag=foreverworld_spawnpoint,limit=1] fwspawnx
execute store result entity @s Pos[1] double 1.0 run scoreboard players get @e[tag=foreverworld_spawnpoint,limit=1] fwspawny
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @e[tag=foreverworld_spawnpoint,limit=1] fwspawnz
execute at @s run tp @e[tag=foreverworld_spawnpoint,limit=1] ~ ~ ~
kill @s

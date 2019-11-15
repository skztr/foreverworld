# Must run as a playerstand
# The target player must be tagged with foreverworld_spawnpoint
# Completes the process of choosing an initial spawnpoint for the player
# Executes as a function so that its commands can be bypassed easily in a loop

execute as @a[tag=foreverworld_spawnpoint,tag=foreverworld_debug] run function foreverworld:test/debug/once/begin
execute if entity @a[tag=foreverworld_spawnpoint,tag=foreverworld_debug] run tellraw @a[tag=foreverworld_spawnpoint] [{"text":"spread in "},{"score":{"name":"@e[tag=foreverworld_spawnpoint,limit=1]","objective":"fwlocal"}},{"text":" iterations"}]
execute if entity @a[tag=foreverworld_spawnpoint,tag=foreverworld_debug] run function foreverworld:test/debug/location
execute as @a[tag=foreverworld_spawnpoint,tag=foreverworld_debug] run function foreverworld:test/debug/once/end

execute store result score @e[tag=foreverworld_spawnpoint,limit=1] fwspawnx run data get entity @s Pos[0]
execute store result score @e[tag=foreverworld_spawnpoint,limit=1] fwspawny run data get entity @s Pos[1]
execute store result score @e[tag=foreverworld_spawnpoint,limit=1] fwspawnz run data get entity @s Pos[2]
kill @s

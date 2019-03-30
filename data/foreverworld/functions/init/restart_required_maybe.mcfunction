say foreverworld:init/restart_required_maybe

# If we're in 1.14 or higher (which added VillagerData to villagers), we don't need to restart.
execute at @e[tag=foreverworld_marker] run summon minecraft:villager ~ ~ ~ {NoAI:1b,Invulnerable:1b,NoGravity:1b,Tags:["foreverworld_version_detect"]}
execute store success score #foreverworld_global fwlocal run data get entity @e[tag=foreverworld_version_detect,limit=1] VillagerData
execute at @e[tag=foreverworld_marker] run tp @e[tag=foreverworld_version_detect] ~ -1000 ~

# If the villager had VillagerData, skip the next step
execute if score #foreverworld_global fwlocal matches 1 run scoreboard players add #foreverworld_global fwinit 2

# Advance to the next step
execute if score #foreverworld_global fwlocal matches 0 run say Restart required to ensure compasses point North
execute if score #foreverworld_global fwlocal matches 0 run scoreboard players add #foreverworld_global fwinit 1

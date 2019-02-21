# init steps
# Should only be reached when there is no initialized player detected
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker] run say foreverworld:init/step
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker] run function foreverworld:init/spawnchunks
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=!foreverworld_marker_restarted] run function foreverworld:init/restart_required

execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_restarted] run function foreverworld:gameloop

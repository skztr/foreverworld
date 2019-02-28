# init steps
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker] run say foreverworld:init/step
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker] run function foreverworld:init/spawnchunks
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=!foreverworld_marker_restarted] run function foreverworld:init/restart_required
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_restarted,tag=!foreverworld_marker_initialized] run tag @e[tag=foreverworld_marker] add foreverworld_marker_initialized

# if we are now initialized, go back to the main state switch
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] run function foreverworld:state

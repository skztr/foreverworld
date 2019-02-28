# outer state switch
# either we are already running (and have a player), or we don't

# If we are not initialized, initialize
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] if entity @a run function foreverworld:init/step

# If game initialized, but there is an uninitialized player, initialize player
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] if entity @a[tag=!foreverworld_player] run function foreverworld:new

# If initialized, and there are no players, (and we are not paused) pause
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] unless entity @a[tag=foreverworld_player] unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_paused] run function foreverworld:pause

# If initialized, and there are players, (and we are paused) resume
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] if entity @a[tag=foreverworld_player] unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=!foreverworld_marker_paused] unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_paused_manual] run function foreverworld:resume

# If initialized, and there are players, (and we are manually paused) note it
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized,tag=foreverworld_marker_paused] run function foreverworld:pause/paused

# If we are initialized (and not paused), gameloop
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized,tag=!foreverworld_marker_paused] run function foreverworld:gameloop

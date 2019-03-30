# outer state switch
# either we are already running (and have a player), or we don't

# If we are not initialized, initialize
execute if score #foreverworld_global fwstate matches 0 run function foreverworld:init/step

# If game initialized, but there is an uninitialized player, initialize player
execute if score #foreverworld_global fwstate matches 1 if entity @a[tag=!foreverworld_player,gamemode=!creative] run function foreverworld:new
execute if score #foreverworld_global fwstate matches 2 if entity @a[tag=!foreverworld_player,gamemode=!creative] run function foreverworld:new

# If initialized, and there are no players, (and we are not paused) pause
execute if score #foreverworld_global fwstate matches 1 unless entity @a[tag=foreverworld_player,gamemode=!creative] run function foreverworld:pause

# If there are players, (and we are paused) resume
execute if score #foreverworld_global fwstate matches 2 if entity @a[tag=foreverworld_player,gamemode=!creative] run function foreverworld:resume

# If we are manually paused, note it
execute if score #foreverworld_global fwstate matches 3 run function foreverworld:paused

# If initialized (and still not paused), gameloop
execute if score #foreverworld_global fwstate matches 1 run function foreverworld:gameloop

# "reload" is only set for the first loop
scoreboard players set #foreverworld_global fwreload 0

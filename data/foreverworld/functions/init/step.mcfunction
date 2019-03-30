# init steps
execute unless score #foreverworld_global fwinit matches 0.. run scoreboard players set #foreverworld_global fwinit 0
execute unless score #foreverworld_global fwinit matches 5 run say foreverworld:init/step

execute if score #foreverworld_global fwinit matches 0 run function foreverworld:init/variables
execute if score #foreverworld_global fwinit matches 1 run function foreverworld:init/spawnchunks
execute if score #foreverworld_global fwinit matches 2 run function foreverworld:init/chamber
execute if score #foreverworld_global fwinit matches 3 run function foreverworld:init/rules
execute if score #foreverworld_global fwinit matches 4 run function foreverworld:init/restart_required_maybe
execute if score #foreverworld_global fwinit matches 5 run function foreverworld:init/restart_required

# if we are now initialized, go back to the main state switch
execute if score #foreverworld_global fwinit matches 6 run scoreboard players set #foreverworld_global fwstate 1
execute if score #foreverworld_global fwstate matches 1 run function foreverworld:state

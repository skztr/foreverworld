# outer state switch
# either we are already running (and have a player), or we don't
execute if entity @a[tag=foreverworld_player] run function foreverworld:gameloop
execute unless entity @a[tag=foreverworld_player] if entity @a run function foreverworld:init/step

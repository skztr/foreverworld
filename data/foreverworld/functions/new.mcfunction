# New Players

# Clear tags used in game initialization
tag @a remove foreverworld_init_player_countdown
tag @a remove foreverworld_init_player_ready

# Zero-out scores which may be referenced when initializing identifiers
scoreboard players set @a[tag=!foreverworld_player] fwpsid 0
scoreboard players set @a[tag=!foreverworld_player] fwpsinc 0

execute as @a[tag=!foreverworld_player] run function foreverworld:new/fakedeath
tag @a[tag=!foreverworld_player] add foreverworld_player

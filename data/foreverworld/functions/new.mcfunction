# New Players
say foreverworld:new

# Clear tags used in game initialization
tag @a[tag=!foreverworld_player,gamemode=!creative] remove foreverworld_init_player_countdown
tag @a[tag=!foreverworld_player,gamemode=!creative] remove foreverworld_init_player_ready

# Zero-out scores which may be referenced when initializing identifiers
scoreboard players set @a[tag=!foreverworld_player,gamemode=!creative] fwpsid 0
scoreboard players set @a[tag=!foreverworld_player,gamemode=!creative] fwpsinc 0

execute as @a[tag=!foreverworld_player,gamemode=!creative] run function foreverworld:new/fakedeath
tag @a[tag=!foreverworld_player,gamemode=!creative] add foreverworld_player

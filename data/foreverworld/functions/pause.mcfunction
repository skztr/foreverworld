say foreverworld:pause

# If already paused, we must have been run "manually". Mark as manual.
execute if score #foreverworld_global fwstate matches 2 run scoreboard players set #foreverworld_global fwstate 3

# If there is a player, we must have been run "manually". Mark as manual.
execute if entity @a[tag=foreverworld_player,gamemode=survival] run scoreboard players set #foreverworld_global fwstate 3

# Mark as paused unless we're already marked as manual
execute unless score #foreverworld_global fwstate matches 3 run scoreboard players set #foreverworld_global fwstate 2

gamerule doDaylightCycle false
gamerule doWeatherCycle false

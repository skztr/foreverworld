say foreverworld:pause

# If already paused, we must have been run "manually". Mark as manual.
execute if entity @e[tag=foreverworld_marker,tag=foreverworld_marker_paused] run tag @e[tag=foreverworld_marker] add foreverworld_marker_paused_manual

# If there is a player, we must have been run "manually". Mark as manual.
execute if entity @a[tag=foreverworld_player] run tag @e[tag=foreverworld_marker] add foreverworld_marker_paused_manual

# Mark as paused
tag @e[tag=foreverworld_marker] add foreverworld_marker_paused

gamerule doDaylightCycle false

say foreverworld:resume
tag @e[tag=foreverworld_marker] remove foreverworld_marker_paused
execute if entity @e[tag=foreverworld_marker,tag=foreverworld_marker_paused_manual] run title @a clear
tag @e[tag=foreverworld_marker] remove foreverworld_marker_paused_manual

gamerule doDaylightCycle true
gamerule doWeatherCycle true

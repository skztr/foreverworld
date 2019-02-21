# Cooldown prior to ressurrection
# intended prevent undue server load from teleporting quickly between areas

scoreboard players set @s[tag=!foreverworld_death_countdown,tag=!foreverworld_death_ready] fwcountdown 0
tag @s[tag=!foreverworld_death_countdown,tag=!foreverworld_death_ready] add foreverworld_death_countdown
scoreboard players add @e[tag=foreverworld_death_countdown] fwcountdown 1

tag @e[tag=foreverworld_death_countdown,scores={fwcountdown=100..}] add foreverworld_death_ready
tag @e[tag=foreverworld_death_ready] remove foreverworld_death_countdown

gamemode spectator @e[type=minecraft:player,tag=foreverworld_death_countdown]
execute at @e[type=minecraft:armor_stand,tag=foreverworld_marker] run tp @e[type=minecraft:player,tag=foreverworld_death_countdown] ~ ~ ~ 180 0
title @e[type=minecraft:player,tag=foreverworld_death_countdown] times 0 200 0
title @e[type=minecraft:player,tag=foreverworld_death_countdown,tag=foreverworld_died_fake] title {"text":"Loading...","color":"dark_red"}
title @e[type=minecraft:player,tag=foreverworld_death_countdown,tag=!foreverworld_died_fake] title {"text":"DEAD","color":"dark_red"}
title @e[type=minecraft:player,tag=foreverworld_death_countdown] subtitle {"text":""}
title @e[type=minecraft:player,tag=foreverworld_death_ready] clear

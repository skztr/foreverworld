gamemode spectator @a
execute at @e[type=minecraft:armor_stand,tag=foreverworld_marker] run tp @a ~ ~ ~ 180 0

title @a reset
title @a times 0 99999 0
title @a title {"text":"Restart Server","color":"dark_red"}
title @a subtitle {"text":"Restart required to ensure compasses point North","color":"gold"}

execute if score #foreverworld_global fwreload matches 0 run gamemode spectator @a
execute if score #foreverworld_global fwreload matches 0 run execute at @e[tag=foreverworld_marker] run tp @a ~ ~ ~ 180 0

execute if score #foreverworld_global fwreload matches 0 run title @a reset
execute if score #foreverworld_global fwreload matches 0 run title @a times 0 99999 0
execute if score #foreverworld_global fwreload matches 0 run title @a title {"text":"Restart Server","color":"dark_red"}
execute if score #foreverworld_global fwreload matches 0 run title @a subtitle {"text":"Restart required to ensure compasses point North","color":"gold"}

execute if score #foreverworld_global fwreload matches 1 run scoreboard players add #foreverworld_global fwinit 1

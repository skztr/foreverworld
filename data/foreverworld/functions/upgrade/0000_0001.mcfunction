say foreverworld:upgrade/0000_0001

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] run scoreboard players set #foreverworld_global fwstate 1
execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] run tag @s remove foreverworld_marker_initialized

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_paused] run scoreboard players set #foreverworld_global fwstate 2
execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_paused] run tag @s remove foreverworld_marker_paused

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_paused_manual] run scoreboard players set #foreverworld_global fwstate 3
execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_paused_manual] run tag @s remove foreverworld_marker_paused_manual

scoreboard players operation #foreverworld_global fwpsid = @e[type=minecraft:armor_stand,tag=foreverworld_marker] fwpsid
scoreboard players set #foreverworld_global fwreload 0
scoreboard players reset @e[type=minecraft:armor_stand,tag=foreverworld_marker] fwpsid
scoreboard players reset @e[type=minecraft:armor_stand,tag=foreverworld_marker] fwpsfind
scoreboard players reset @e[type=minecraft:armor_stand,tag=foreverworld_marker] fwdawn

scoreboard players set #foreverworld_global fwinit 2

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_chamber] run scoreboard players set #foreverworld_global fwinit 3
execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_chamber] run tag @s remove foreverworld_marker_chamber

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_rules] run scoreboard players set #foreverworld_global fwinit 4
execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_rules] run tag @s remove foreverworld_marker_rules

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_restarted] run scoreboard players set #foreverworld_global fwinit 6
execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_restarted] run tag @s remove foreverworld_marker_restarted

execute as @e[type=minecraft:armor_stand,tag=foreverworld_marker,tag=foreverworld_marker_initialized] run tag @s remove foreverworld_marker_dawn

scoreboard players set #foreverworld_global fwversion 1

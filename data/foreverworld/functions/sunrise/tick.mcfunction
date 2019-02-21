# Jump gametime forward until we reach dawn
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker_dawn,scores={fwdawn=..-1}] run function foreverworld:sunrise/timeskip
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker_dawn,scores={fwdawn=..-1}] run function foreverworld:sunrise/end
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker_dawn,scores={fwdawn=..-1}] run function foreverworld:sunrise/tick

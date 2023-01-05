say foreverworld:upgrade/0002_0003

execute at @e[tag=foreverworld_marker] run fill ~-2 -64 ~-2 ~2 319 ~2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ -63 ~ ~ 319 ~ minecraft:air replace
execute as @e[tag=foreverworld_marker] run tp @s 0 -63 -5000000

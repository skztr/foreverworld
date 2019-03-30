# Create a tube of bedrock. New players should spawn into the center of the tube.
say foreverworld:init/chamber

# the below "fill" command doesn't seem to run.
# so instead, we fake it by running each "column" manually
#fill ~-2 0 ~-2 ~2 255 ~2 minecraft:bedrock replace

execute at @e[tag=foreverworld_marker] run fill ~-2 0 ~2 ~-2 255 ~2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~-1 0 ~2 ~-1 255 ~2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ 0 ~2 ~ 255 ~2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~1 0 ~2 ~1 255 ~2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~2 0 ~2 ~2 255 ~2 minecraft:bedrock replace

execute at @e[tag=foreverworld_marker] run fill ~-2 0 ~1 ~-2 255 ~1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~-1 0 ~1 ~-1 255 ~1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ 0 ~1 ~ 255 ~1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~1 0 ~1 ~1 255 ~1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~2 0 ~1 ~2 255 ~1 minecraft:bedrock replace

execute at @e[tag=foreverworld_marker] run fill ~-2 0 ~ ~-2 255 ~ minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~-1 0 ~ ~-1 255 ~ minecraft:bedrock replace
#### ~ 0 ~ ~ 255 ~ minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~1 0 ~ ~1 255 ~ minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~2 0 ~ ~2 255 ~ minecraft:bedrock replace

execute at @e[tag=foreverworld_marker] run fill ~-2 0 ~-1 ~-2 255 ~-1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~-1 0 ~-1 ~-1 255 ~-1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ 0 ~-1 ~ 255 ~-1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~1 0 ~-1 ~1 255 ~-1 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~2 0 ~-1 ~2 255 ~-1 minecraft:bedrock replace

execute at @e[tag=foreverworld_marker] run fill ~-2 0 ~-2 ~-2 255 ~-2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~-1 0 ~-2 ~-1 255 ~-2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ 0 ~-2 ~ 255 ~-2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~1 0 ~-2 ~1 255 ~-2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~2 0 ~-2 ~2 255 ~-2 minecraft:bedrock replace

execute at @e[tag=foreverworld_marker] run fill ~-2 0 ~ ~ 255 ~ minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ 1 ~ ~ 255 ~ minecraft:air replace
execute at @e[tag=foreverworld_marker] run fill ~ 3 ~ ~ 4 ~ minecraft:bedrock replace

scoreboard players add #foreverworld_global fwinit 1

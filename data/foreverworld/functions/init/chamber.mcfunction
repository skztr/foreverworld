# Create a tube of bedrock. New players should spawn into the center of the tube.
say foreverworld:init/chamber

execute at @e[tag=foreverworld_marker] run fill ~-2 -64 ~-2 ~2 319 ~2 minecraft:bedrock replace
execute at @e[tag=foreverworld_marker] run fill ~ -63 ~ ~ 319 ~ minecraft:air replace

scoreboard players add #foreverworld_global fwinit 1

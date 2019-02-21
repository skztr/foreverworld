tp @s ~ ~ ~ facing 0 0 -100000
setblock ~ ~-1 ~ minecraft:beacon
fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:iron_block
data merge block ~ ~-1 ~ {Primary:1}

setblock ~ ~4 ~ minecraft:end_portal
tp @s ~ ~3 ~

tellraw @s {"text":"(step 2/12) The player should be teleported to The End"}
tag @s add foreverworld_test_run

execute in minecraft:the_nether run fill ~-2 ~-1 ~-2 ~2 255 ~2 minecraft:netherrack hollow
execute in minecraft:the_nether run setblock ~ ~-1 ~ minecraft:beacon
execute in minecraft:the_nether run fill ~-1 ~ ~-1 ~1 255 ~1 minecraft:air destroy
execute in minecraft:the_nether run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:iron_block
execute in minecraft:the_nether run data merge block ~ ~-1 ~ {Primary:1}
execute in minecraft:the_nether run setblock ~ ~-1 ~1 minecraft:respawn_anchor[charges=1]
gamemode survival

tellraw @s {"text":"(step 7/12) The Nether should be prepared for respawn"}
tag @s add foreverworld_test_run

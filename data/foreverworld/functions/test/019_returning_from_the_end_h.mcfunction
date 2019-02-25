setblock ~ ~4 ~ minecraft:end_portal
tp @s ~ ~3 ~

tellraw @s {"text":"(step 8/12) The player should be teleported to The End"}
tag @s add foreverworld_test_run

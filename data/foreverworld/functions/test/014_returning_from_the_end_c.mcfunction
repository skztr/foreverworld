setblock ~ ~4 ~ minecraft:end_portal
tp @s ~ ~4 ~

tellraw @s {"text":"(step 3/12) The player should be teleported to their initial location (an iron beacon)"}
tag @s add foreverworld_test_run

setblock ~ ~4 ~ minecraft:end_portal
tp @s ~ ~3 ~

tellraw @s {"text":"(step 9/12) The player should be teleported to their bed (near a gold beacon)"}
tag @s add foreverworld_test_run

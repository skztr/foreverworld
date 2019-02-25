setblock ~ ~4 ~ minecraft:end_portal
tp @s ~ ~3 ~

tellraw @s {"text":"(step 12/12) The player should be teleported to where there bed was (near a gold beacon)"}
tag @s add foreverworld_test_run

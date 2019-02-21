tp @s ~ ~ ~ facing 0 ~ -100000
setblock ~ ~ ~-1 minecraft:ender_chest

tellraw @s {"text":"(step 3/3) The enderchest should be empty"}
tag @s add foreverworld_test_run

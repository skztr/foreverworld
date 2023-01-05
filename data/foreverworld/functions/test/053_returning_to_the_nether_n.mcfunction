execute in minecraft:overworld run tp @s ~ ~ ~ facing 0 0 -100000
execute in minecraft:overworld run spreadplayers ~ ~ 1 1 false @s

tellraw @s {"text":"(step 14/12) The player should be teleported to The Overworld"}
tag @s add foreverworld_test_run

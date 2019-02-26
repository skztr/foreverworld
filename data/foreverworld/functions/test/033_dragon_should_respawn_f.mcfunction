kill @e[type=minecraft:ender_dragon]
execute in the_end run tp @s -2 65 -2 facing -1 63 -1

tellraw @s {"text":"(step 6/6) The end portal should reopen"}
tag @s add foreverworld_test_run

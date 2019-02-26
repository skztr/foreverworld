kill @e[type=minecraft:ender_dragon]
execute in the_end run tp @s -2 65 -2 facing 0 66.5 0

tellraw @s {"text":"(step 2/6) The Dragon should die, leaving behind an egg"}
tag @s add foreverworld_test_run

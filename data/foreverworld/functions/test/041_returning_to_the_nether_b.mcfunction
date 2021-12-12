gamemode spectator
execute in minecraft:the_nether run tp @s ~ ~ ~ facing 0 0 -100000

tellraw @s {"text":"(step 2/12) The player should be teleported to The Nether"}
tag @s add foreverworld_test_run

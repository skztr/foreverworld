# Compasses should appear to point "north" from at least double the distance of the spread
# So: teleport to the world border, face north, and give the player a compass to compare.

clear @s
gamemode spectator @s
tp @s -50000 255 -50000 180 0
gamemode creative @s
give @s minecraft:compass

tellraw @s {"text":"The compass should point north (forward)"}
tag @s add foreverworld_test_run

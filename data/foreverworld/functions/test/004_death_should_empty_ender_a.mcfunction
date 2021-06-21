item replace entity @s enderchest.0 with minecraft:stone
item replace entity @s enderchest.1 with minecraft:stone
item replace entity @s enderchest.2 with minecraft:stone
item replace entity @s enderchest.3 with minecraft:stone
item replace entity @s enderchest.4 with minecraft:stone
item replace entity @s enderchest.5 with minecraft:stone
item replace entity @s enderchest.6 with minecraft:stone
item replace entity @s enderchest.7 with minecraft:stone
item replace entity @s enderchest.8 with minecraft:stone
item replace entity @s enderchest.9 with minecraft:stone
item replace entity @s enderchest.10 with minecraft:stone
item replace entity @s enderchest.11 with minecraft:stone
item replace entity @s enderchest.12 with minecraft:stone
item replace entity @s enderchest.13 with minecraft:stone
item replace entity @s enderchest.14 with minecraft:stone
item replace entity @s enderchest.15 with minecraft:stone
item replace entity @s enderchest.16 with minecraft:stone
item replace entity @s enderchest.17 with minecraft:stone
item replace entity @s enderchest.18 with minecraft:stone
item replace entity @s enderchest.19 with minecraft:stone
item replace entity @s enderchest.20 with minecraft:stone
item replace entity @s enderchest.21 with minecraft:stone
item replace entity @s enderchest.22 with minecraft:stone
item replace entity @s enderchest.23 with minecraft:stone
item replace entity @s enderchest.24 with minecraft:stone
item replace entity @s enderchest.25 with minecraft:stone
item replace entity @s enderchest.26 with minecraft:stone

tp @s ~ ~ ~ facing 0 ~ -100000
setblock ~ ~ ~-1 minecraft:ender_chest

tellraw @s {"text":"(step 1/3) The enderchest should be full of stone"}
tag @s add foreverworld_test_run

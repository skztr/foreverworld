replaceitem entity @s enderchest.0 minecraft:stone
replaceitem entity @s enderchest.1 minecraft:stone
replaceitem entity @s enderchest.2 minecraft:stone
replaceitem entity @s enderchest.3 minecraft:stone
replaceitem entity @s enderchest.4 minecraft:stone
replaceitem entity @s enderchest.5 minecraft:stone
replaceitem entity @s enderchest.6 minecraft:stone
replaceitem entity @s enderchest.7 minecraft:stone
replaceitem entity @s enderchest.8 minecraft:stone
replaceitem entity @s enderchest.9 minecraft:stone
replaceitem entity @s enderchest.10 minecraft:stone
replaceitem entity @s enderchest.11 minecraft:stone
replaceitem entity @s enderchest.12 minecraft:stone
replaceitem entity @s enderchest.13 minecraft:stone
replaceitem entity @s enderchest.14 minecraft:stone
replaceitem entity @s enderchest.15 minecraft:stone
replaceitem entity @s enderchest.16 minecraft:stone
replaceitem entity @s enderchest.17 minecraft:stone
replaceitem entity @s enderchest.18 minecraft:stone
replaceitem entity @s enderchest.19 minecraft:stone
replaceitem entity @s enderchest.20 minecraft:stone
replaceitem entity @s enderchest.21 minecraft:stone
replaceitem entity @s enderchest.22 minecraft:stone
replaceitem entity @s enderchest.23 minecraft:stone
replaceitem entity @s enderchest.24 minecraft:stone
replaceitem entity @s enderchest.25 minecraft:stone
replaceitem entity @s enderchest.26 minecraft:stone

tp @s ~ ~ ~ facing 0 ~ -100000
setblock ~ ~ ~-1 minecraft:ender_chest

tellraw @s {"text":"(step 1/3) The enderchest should be full of stone"}
tag @s add foreverworld_test_run

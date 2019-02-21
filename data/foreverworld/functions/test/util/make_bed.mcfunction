# Must run as a specific player
# creates a bed 10 blocks north of the player, ensuring it is safe and valid
# teleports the player onto the bed, looking at it, ready for sleep
setblock ~ ~ ~-10 minecraft:red_bed[facing=north,part=foot]
setblock ~ ~ ~-11 minecraft:red_bed[facing=north,part=head]
fill ~-1 ~-1 ~-9 ~1 ~-1 ~-12 minecraft:oak_planks

fill ~-1 ~ ~-9 ~1 255 ~-9 minecraft:air
fill ~-1 ~ ~-10 ~-1 255 ~-11 minecraft:air
fill ~ ~1 ~-10 ~1 255 ~-11 minecraft:air
fill ~1 ~ ~-10 ~1 255 ~-11 minecraft:air
fill ~-1 ~ ~-12 ~1 255 ~-12 minecraft:air

tp @s ~ ~1 ~-10 180 90

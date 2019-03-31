execute at @s run tp @s 0 255 0
# Step over similar-looking slices, looking for anything that doesn't match.
# We can do this with confidence because (so long as there is at least one air
# block in the tested blocks), the bedrock of the end portal will never match
# any slice above it.
# THIS IS NOT PERFECT: Bedrock can be broken. If the bedrock above the portal is
# broken, the assumptions regarding the makeup of the slices will be wrong.
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-255 ~ ~ ~-128 ~ ~ ~-127 ~ all run tp @s ~ ~-256 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-127 ~ ~ ~-64 ~ ~ ~-63 ~ all run tp @s ~ ~-128 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-63 ~ ~ ~-32 ~ ~ ~-31 ~ all run tp @s ~ ~-64 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-31 ~ ~ ~-16 ~ ~ ~-15 ~ all run tp @s ~ ~-32 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-15 ~ ~ ~-8 ~ ~ ~-7 ~ all run tp @s ~ ~-16 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-7 ~ ~ ~-4 ~ ~ ~-3 ~ all run tp @s ~ ~-8 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-3 ~ ~ ~-2 ~ ~ ~-1 ~ all run tp @s ~ ~-4 ~
execute at @s if block ~ ~ ~ minecraft:air run execute if blocks ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~ all run tp @s ~ ~-2 ~
execute at @s if block ~ ~ ~ minecraft:bedrock run tp ~ ~1 ~

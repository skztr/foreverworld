execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run fill ~-1 0 ~-1 ~1 3 ~1 minecraft:air
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run fill ~-1 0 ~-1 ~1 3 ~1 minecraft:bedrock hollow
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run setblock ~ 1 ~ minecraft:end_portal
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run tp @s ~ 1 ~

execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run fill ~-1 -64 ~-1 ~1 -61 ~1 minecraft:air
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run fill ~-1 -64 ~-1 ~1 -61 ~1 minecraft:bedrock hollow
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run setblock ~ -63 ~ minecraft:end_portal
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run tp @s ~ -63 ~

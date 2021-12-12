execute as @a[tag=foreverworld_lode,nbt={Inventory:[{id:"minecraft:compass",tag:{LodestoneTracked:1b}}]}] run function foreverworld:inventory/no_lodestone

# we use the foreverworld_lode tag to delay application of the rule by one tick, as updating a compass destination in the same tick will not be seen by the client
execute as @a[tag=foreverworld_lode] run tag @s remove foreverworld_lode
execute as @a[tag=!foreverworld_lode,nbt={Inventory:[{id:"minecraft:compass",tag:{LodestoneTracked:1b}}]}] run tag @s add foreverworld_lode

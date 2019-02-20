# Respawn into the holding chamber
spawnpoint @a[score_fwdied_min=1] 0 4 -29999900

# Allow player to be repositioned when they respawn
scoreboard players set @a[score_fwdied_min=1] fwresurrect 1

# Revoke all Advancements
advancement revoke @a[score_fwdied_min=1] everything

# Clear EnderChest
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.0 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.1 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.2 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.3 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.4 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.5 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.6 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.7 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.8 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.9 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.10 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.11 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.12 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.13 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.14 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.15 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.16 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.17 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.18 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.19 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.20 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.21 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.22 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.23 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.24 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.25 minecraft:air
replaceitem entity @a[score_fwdied_min=1] slot.enderchest.26 minecraft:air

# Reset death-detector for next time
scoreboard players set @a[score_fwdied_min=1] fwdied 0

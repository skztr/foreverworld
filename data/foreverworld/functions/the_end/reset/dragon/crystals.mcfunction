# Creates four invulnerable end crystals around the portal
# This should begin the summoning ritual, but the ritual does not actually
# begin until the player places an end crystal somewhere (anywhere)

# Ensure end crystals are present on the center portal
function foreverworld:the_end/detect/portal

execute as @e[tag=foreverworld_exit_portal] at @s align xyz positioned ~-3 ~-3 ~-1 unless entity @e[type=minecraft:end_crystal,dx=1,dy=1,dz=3,nbt={Invulnerable:1b}] at @s align xyz run summon minecraft:end_crystal ~-2.5 ~-2.5 ~0.5 {Invulnerable:1b,ShowBottom:0b}
execute as @e[tag=foreverworld_exit_portal] at @s align xyz positioned ~3 ~-3 ~-1 unless entity @e[type=minecraft:end_crystal,dx=1,dy=1,dz=3,nbt={Invulnerable:1b}] at @s align xyz run summon minecraft:end_crystal ~3.5 ~-2.5 ~0.5 {Invulnerable:1b,ShowBottom:0b}
execute as @e[tag=foreverworld_exit_portal] at @s align xyz positioned ~-1 ~-3 ~-3 unless entity @e[type=minecraft:end_crystal,dx=3,dy=1,dz=1,nbt={Invulnerable:1b}] at @s align xyz run summon minecraft:end_crystal ~0.5 ~-2.5 ~-2.5 {Invulnerable:1b,ShowBottom:0b}
execute as @e[tag=foreverworld_exit_portal] at @s align xyz positioned ~-1 ~-3 ~3 unless entity @e[type=minecraft:end_crystal,dx=3,dy=1,dz=1,nbt={Invulnerable:1b}] at @s align xyz run summon minecraft:end_crystal ~0.5 ~-2.5 ~3.5 {Invulnerable:1b,ShowBottom:0b}

# Creates four invulnerable end crystals around the portal
# This should begin the summoning ritual, but the ritual does not actually
# begin until the player places an end crystal somewhere (anywhere)

# Ensure end crystals are present on the center portal
execute in the_end unless entity @e[type=minecraft:end_crystal,x=-3,y=65,z=-1,dx=-3,dy=65,dz=-1,nbt={Invulnerable:1b}] run summon minecraft:end_crystal -3 65 0 {Invulnerable:1b}
execute in the_end unless entity @e[type=minecraft:end_crystal,x=3,y=65,z=-1,dx=3,dy=65,dz=1,nbt={Invulnerable:1b}] run summon minecraft:end_crystal 3 65 0 {Invulnerable:1b}
execute in the_end unless entity @e[type=minecraft:end_crystal,x=-1,y=65,z=-3,dx=1,dy=65,dz=-3,nbt={Invulnerable:1b}] run summon minecraft:end_crystal 0 65 -3 {Invulnerable:1b}
execute in the_end unless entity @e[type=minecraft:end_crystal,x=-1,y=65,z=3,dx=1,dy=65,dz=3,nbt={Invulnerable:1b}] run summon minecraft:end_crystal 0 65 3 {Invulnerable:1b}

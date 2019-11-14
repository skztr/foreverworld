# In order to force the compass to point "north", worldspawn is set to the
# location of the "death chamber".
# This is problematic, because there is a very important non-death situation
# which moves the player to worldspawn: returning from The End if you don't
# have a valid bed.

# Legacy handling (pre-2): if the player doesn't have a spawnpoint in their
# scoreboard, set the spawnpoint to their current spawnpoint, which would have
# been set by the previous version
execute as @e[type=minecraft:player,tag=foreverworld_player] run function foreverworld:spawnpoint/legacy

# if the player is in the death chamber, but is not dead, their spawnpoint was
# invalid. We should return them to their "first" spawnpoint.
execute at @e[tag=foreverworld_marker] positioned ~ 0 ~ as @e[type=minecraft:player,tag=foreverworld_player,scores={fwdead=0},dx=1,dy=256,dz=1] run function foreverworld:spawnpoint/first

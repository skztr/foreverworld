# In order to force the compass to point "north", worldspawn is set to the
# location of the "death chamber".
# This is problematic, because there is a very important non-death situation
# which moves the player to worldspawn: returning from The End if you don't
# have a valid bed.

# To work-around this, we instead make a couple of changes to the "rules":
# 1) Sleeping in a bed will set your spawnpoint, even if the bed breaks or
#    otherwise becomes invalid.
# 2) If you have never slept in a bed, your spawnpoint will be the exact
#    point where you started the game.
#
# This is imperfect: there are situations where the spawnpoint has changed
# significantly, to the point where you might die. These situations are
# avoidable and should be rare, and so are considered low risk. We could
# theoretically "test" the spawnpoint and move it to safety, but this doesn't
# seem worth the effort for now.
# We don't need to worry about the player going into a "death loop", because
# death always teleports them to a completely random location. This is only
# about returning from The End.

# Legacy handling (pre-2): if the player doesn't have a spawnpoint in their
# scoreboard, set the spawnpoint to their current spawnpoint, which would have
# been set by the previous version
execute as @e[type=minecraft:player,tag=foreverworld_player] run function foreverworld:spawnpoint/legacy

# if the player is in the death chamber, but is not dead, their spawnpoint was
# invalid. We should return them to their "first" spawnpoint.
execute at @e[tag=foreverworld_marker] positioned ~ 0 ~ as @e[type=minecraft:player,tag=foreverworld_player,scores={fwdead=0},dx=1,dy=256,dz=1] run function foreverworld:spawnpoint/first

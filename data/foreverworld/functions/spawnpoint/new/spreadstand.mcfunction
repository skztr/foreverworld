# Must run as a playerstand
# The target player must be tagged with foreverworld_spawnpoint
# chooses a random location that is:
#  - within a 26240*2 block square centered on 0 0
#  - within 26240-radius circle centered on 0 0
#
# The number 26240 is chosen because it is within 1 fully-zoomed-out map width
# (2048 blocks) of the radius in which Strongholds can generate (24192 blocks).
#
# The "spreadplayers" function spreads players in a square, not a circle, while
# Strongholds generate in a circular pattern. Due to this, the "corners" of the
# square can sometimes be exceedingly far away from any stronghold (up to 12916
# blocks away from the maximum Stronghold spawning radius).
# To avoid this, we check this distance from 0 0 after spreading, and re-spread
# when we are outside of the desired radius.
#
# This function uses a recursive loop. It will continuously choose random
# locations until a suitable position is found. This is expected to happen about
# once every four to five attempts (~22.5% of the time)

scoreboard players add @e[tag=foreverworld_spawnpoint] fwlocal 1
spreadplayers 0 0 0 26240 true @s

execute if entity @s[x=0,z=0,distance=..26240.999999] run function foreverworld:spawnpoint/new/finish
execute if entity @s[x=0,z=0,distance=26241..] run function foreverworld:spawnpoint/new/spreadstand

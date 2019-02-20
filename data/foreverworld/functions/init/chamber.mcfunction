# Only run this step once
scoreboard players set @a fwinit 2

# Respawn Area
# This is a holding chamber so that dead players don't briefly see their old bed
# We set setblock to create command-blocks here, because "fill" on its own was
# not working within functions, for unknown reasons.

# First, fill the area with bedrock.
setblock 0 1 -29999900 minecraft:command_block 1 replace {Command:"/fill -2 4 -29999898 2 255 -29999902 minecraft:bedrock 0 replace",auto:1}

# Next, make a shaft of air. We do this, rather than using "hollow" initially,
# to ensure the shaft goes all the way to the top. Otherwise, the ressurected
# player would wind up on top of the pillar of bedrock.
setblock 0 2 -29999900 minecraft:chain_command_block 1 replace {Command:"/fill -1 4 -29999899 1 255 -29999901 minecraft:air 0 replace",auto:1}

# Finally, remove the command-blocks, replacing them with bedrock.
setblock 0 3 -29999900 minecraft:chain_command_block 1 replace {Command:"/fill -2 1 -29999899 2 3 -29999901 minecraft:bedrock 0 replace",auto:1}

# Separately, we create a monitor for the resurrection chamber
# This needs to be a command-block, rather than a function, to ensure the area
# has loaded prior to sending the player on their way.
# This is required, rather than directly teleporting as soon as player is
# detected, as teleporting away within the same tick that the player
# ressurects confuses minecraft, preventing it from loading the new location
setblock 0 0 -29999900 minecraft:repeating_command_block 0 replace {Command:"function foreverworld:resurrect if @p[score_fwresurrect_min=1,x=0,y=4,z=-29999900,r=3]",auto:1}

function foreverworld:init/game

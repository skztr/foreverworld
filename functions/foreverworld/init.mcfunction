# Only run once
scoreboard players set @a fwinit 1

# Make compasses point "north"
setworldspawn 0 0 -29999900

# Death tracking
scoreboard objectives add fwdied stat.deaths
scoreboard objectives add fwresurrect dummy
scoreboard objectives add fwsleeping dummy

# Prepare Respawn Area
# The foreverworld:init:chamber function will trigger once we arrive
gamemode spectator @a
tp @a 0 4 -29999900

# Main Entrypoint
gamerule gameLoopFunction foreverworld:gameloop

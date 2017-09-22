# Reset to begining-of-day
time set 0

# Clear Inventory (shouldn't be necessary, but good for the initial run)
clear @p[score_fwresurrect_min=1]

# Teleport to a random position within the world
# The fourth number here is the one to tweak to increase discovery probability
spreadplayers 0 0 0 24000 true @p[score_fwresurrect_min=1]

# Set player spawn, in case they never sleep in a bed before getting to The End
spawnpoint @p[score_fwresurrect_min=1]

# Disable resurrection for anyone we just finished resurrecting
scoreboard players set @p[score_fwresurrect_min=1] fwresurrect 0

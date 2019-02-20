# Only run this step once
scoreboard players set @a fwinit 3

# Disallow f3 coordinates
gamerule reducedDebugInfo true

# Hard Difficulty
difficulty hard

# Reset to Survival mode (we were Spectators while the chamber was created)
gamemode survival @a

# Fake death. This will be picked up by the next gameloop, and the game resets.
scoreboard players set @a fwdied 1

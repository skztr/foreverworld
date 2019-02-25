# Create a new unique id to link the playerstand to the Player
scoreboard players add @e[tag=foreverworld_marker] fwpsid 1
scoreboard players operation @s fwpsid = @e[tag=foreverworld_marker] fwpsid

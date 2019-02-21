# Must run as a specific player.
# Tags that player's armor stand with "foreverworld_playerstand_found"

tag @e[type=minecraft:armor_stand,tag=foreverworld_playerstand] remove foreverworld_playerstand_found

# set each playerstand's fwpsfind score to be the fwpsid of the current player
scoreboard players operation @e[type=minecraft:armor_stand,tag=foreverworld_playerstand] fwpsfind = @s fwpsid

# subtract each playerstand's fwpsid from each playerstand's fwpsfind
execute as @e[type=minecraft:armor_stand,tag=foreverworld_playerstand] run scoreboard players operation @s fwpsfind -= @s fwpsid

# a playerstand with an fwpsfind of 0 means its fwpsid is the same as the player's fwpsid
tag @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,scores={fwpsfind=0}] add foreverworld_playerstand_found

###
# Next, dedup, to ensure we only get the "newest" one
###

tag @e[type=minecraft:armor_stand,tag=foreverworld_playerstand] remove foreverworld_playerstand_found_exact

# set each playerstand's fwpsfind score to be the fwpsinc of the current player
scoreboard players operation @e[type=minecraft:armor_stand,tag=foreverworld_playerstand_found] fwpsfind = @s fwpsinc

# subtract each playerstand's fwpsinc from each playerstand's fwpsfind
execute as @e[type=minecraft:armor_stand,tag=foreverworld_playerstand_found] run scoreboard players operation @s fwpsfind -= @s fwpsinc

# a playerstand with an fwpsfind of 0 means its fwpsinc is the same as the player's fwpsinc
tag @e[type=minecraft:armor_stand,tag=foreverworld_playerstand_found,scores={fwpsfind=0}] add foreverworld_playerstand_found_exact

# Remove any which do not match exactly
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_playerstand_found,tag=!foreverworld_playerstand_found_exact] run say dedup
kill @e[type=minecraft:armor_stand,tag=foreverworld_playerstand_found,tag=!foreverworld_playerstand_found_exact]
tag @e[type=minecraft:armor_stand,tag=foreverworld_playerstand] remove foreverworld_playerstand_found_exact

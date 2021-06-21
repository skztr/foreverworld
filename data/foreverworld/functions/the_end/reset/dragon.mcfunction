# Cause the Dragon to Respawn
# This should run every tick that a player who has never seen the dragon is in
# The End, until they see the dragon.

# Ensure there are end crystals ready for the ritual
function foreverworld:the_end/reset/dragon/crystals

# Trap the player on the end platform
function foreverworld:the_end/reset/platform
execute in the_end run tp @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] 100 49 0

# Keep any endermen away while we trap the player, because that would be awful
execute in the_end if entity @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] run tp @e[type=minecraft:enderman,x=98,y=48,z=-2,dx=4,dy=3,dz=4] 0 -1000 0

# If the player has placed an end crystal, remove it and track that the ritual
# has begun
execute in the_end if entity @e[type=minecraft:end_crystal,x=98,y=48,z=-2,dx=4,dy=3,dz=4] run tag @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] add foreverworld_player_dragon_ritual
execute in the_end if entity @e[type=minecraft:end_crystal,x=98,y=48,z=-2,dx=4,dy=3,dz=4] run setblock 98 49 0 minecraft:air
execute in the_end if entity @e[type=minecraft:end_crystal,x=98,y=48,z=-2,dx=4,dy=3,dz=4] run kill @e[type=minecraft:end_crystal,x=98,y=48,z=-2,dx=4,dy=3,dz=4]

# Create a pedestal for the end crystal unless a player has performed the ritual
execute in the_end unless entity @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,tag=foreverworld_player_dragon_ritual,nbt={Dimension:"minecraft:the_end"}] run setblock 98 49 0 minecraft:bedrock
execute in the_end if entity @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,tag=foreverworld_player_dragon_ritual,nbt={Dimension:"minecraft:the_end"}] if block 98 49 0 minecraft:bedrock run setblock 98 49 0 minecraft:air

# If any player has performed the ritual, consider all players to have performed
# the ritual (ie: don't give them crystals, etc)
execute in the_end if entity @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,tag=foreverworld_player_dragon_ritual,nbt={Dimension:"minecraft:the_end"}] run tag @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] add foreverworld_player_dragon_ritual

# Ensure the player has at least one end crystal
execute as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,tag=!foreverworld_player_dragon_ritual,nbt={Dimension:"minecraft:the_end"}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:end_crystal"}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:end_crystal"}}] run give @s minecraft:end_crystal

# Clean up any dropped end crystal items to prevent this being a source of free
# end crystals
execute in the_end run kill @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},x=98,y=48,z=-2,dx=4,dy=3,dz=4]

# Also clean up any dropped obsidian, as we'll be resetting the platform every
# tick, to prevent this from becoming an easy source of obsidian.
execute in the_end run kill @e[type=item,nbt={Item:{id:"minecraft:obsidian"}},x=98,y=48,z=-2,dx=4,dy=3,dz=4]

# Tell the player what to do
execute in the_end as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] run title @s reset
execute in the_end as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] run title @s clear
execute in the_end as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:"minecraft:the_end"}] run title @s times 0 4 0
execute in the_end as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,tag=!foreverworld_player_dragon_ritual,nbt={Dimension:"minecraft:the_end"}] run title @s title {"text":"Place The Crystal","color":"dark_purple"}
execute in the_end as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,tag=foreverworld_player_dragon_ritual,nbt={Dimension:"minecraft:the_end"}] run title @s title {"text":"The Dragon Is Coming","color":"dark_purple"}

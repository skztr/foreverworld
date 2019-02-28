# When a player enters the end, and has not defeated the dragon in this life,
# they should get a chance to do so.

# Any players who are in the end when the Dragon is, count as having seen the
# dragon. Meaning they won't need to trigger a respawn.
execute as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:1}] if entity @e[type=minecraft:ender_dragon] run title @s clear
execute as @e[type=minecraft:player,tag=foreverworld_player,tag=!foreverworld_player_dragon_view,nbt={Dimension:1}] if entity @e[type=minecraft:ender_dragon] run tag @s add foreverworld_player_dragon_view

# Players who have already killed the dragon, also count as having seen the
# dragon. This shouldn't happen.
execute as @e[type=minecraft:player,tag=foreverworld_player,advancements={minecraft:end/kill_dragon=true}] run tag @s add foreverworld_player_dragon_view

# If there is any player in The End who has not seen the dragon, reset the
# dragon. This will effectively trap the player on the end platform until they
# have seen the dragon.
execute as @e[type=minecraft:player,tag=foreverworld_player,nbt={Dimension:1},tag=!foreverworld_player_dragon_view] run function foreverworld:the_end/reset/dragon

# Otherwise, just keep the platform clean to ensure we don't misdetect a crystal
execute in the_end if entity @e[type=minecraft:end_crystal,x=98,y=48,z=-2,dx=102,dy=51,dz=2] run kill @e[type=minecraft:end_crystal,x=98,y=48,z=-2,dx=102,dy=51,dz=2]
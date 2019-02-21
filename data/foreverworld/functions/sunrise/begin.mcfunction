# When a player dies, it acts like "sleeping"
# ie: the sun will rise, thunderstorms will clear, etc
# You may wish to disable this on multiplayer servers.

scoreboard players set @e[tag=foreverworld_marker] fwdawn 0
execute as @e[tag=foreverworld_marker] store result score @s fwdawn run time query daytime
scoreboard players remove @e[tag=foreverworld_marker] fwdawn 24000

# Only enter sunrise mode if it's been more than a minute since sunrise
execute if entity @e[tag=foreverworld_marker,scores={fwdawn=..-1200}] run tag @e[tag=foreverworld_marker] add foreverworld_marker_dawn

# Loop until sunrise
function foreverworld:sunrise/tick

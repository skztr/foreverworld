# Must run as a specific player.
# Fakes the "first death" in order to cause resurrection
tellraw @s[tag=foreverworld_debug] {"text":"foreverworld:new/fakedeath"}

gamemode spectator @s
tp @s @e[tag=foreverworld_marker,limit=1]
tag @s add foreverworld_died
tag @s add foreverworld_died_fake
gamemode survival @s

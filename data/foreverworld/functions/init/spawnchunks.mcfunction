say foreverworld:init/spawnchunks

worldborder center 0 0
worldborder damage amount 0
worldborder set 10000000
setworldspawn 0 1 -5000000
gamerule spawnRadius 0

execute unless entity @e[tag=foreverworld_marker] run gamemode spectator @a
execute unless entity @e[tag=foreverworld_marker] run tp @a 0 1 -5000000
execute unless entity @e[tag=foreverworld_marker] run summon minecraft:armor_stand 0 1 -5000000 {Marker:1b, Invisible:1b, NoGravity:1b, Tags:["foreverworld_marker"], CustomName:"[{\"text\":\"foreverworld marker\"}]"}
scoreboard players set #foreverworld_global fwpsid 0

execute if entity @e[tag=foreverworld_marker] run scoreboard players add #foreverworld_global fwinit 1

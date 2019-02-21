say foreverworld:init/spawnchunks

worldborder center 0 0
worldborder damage amount 0
worldborder set 10000000
setworldspawn 0 1 -5000000
gamerule spawnRadius 0

execute unless entity @e[tag=foreverworld_marker] run gamemode spectator @a
execute unless entity @e[tag=foreverworld_marker] run tp @a 0 1 -5000000

execute unless entity @e[tag=foreverworld_marker] run summon minecraft:armor_stand 0 1 -5000000 {Marker:1b, Invisible:1b, NoGravity:1b, Tags:["foreverworld_marker","foreverworld_marker_init"], CustomName:"[{\"text\":\"foreverworld marker\"}]"}
scoreboard players set @e[tag=foreverworld_marker_init] fwpsid 0
tag @e[tag=foreverworld_marker_init] remove foreverworld_marker_init

# edge-case where multiple are created prior to any being detected
execute if entity @e[tag=foreverworld_marker,scores={fwpsid=1..}] run kill @e[tag=foreverworld_marker,scores={fwpsid=0}]
execute as @e[tag=foreverworld_marker] run scoreboard players set @s fwpsfind 0
execute as @e[tag=foreverworld_marker] run scoreboard players add @e[tag=foreverworld_marker] fwpsfind 1
kill @e[tag=foreverworld_marker,scores={fwpsfind=2..},limit=1]

execute at @e[tag=foreverworld_marker,tag=!foreverworld_marker_chamber,scores={fwpsfind=1}] run function foreverworld:init/chamber
execute at @e[tag=foreverworld_marker_chamber,tag=!foreverworld_marker_rules,scores={fwpsfind=1}] run function foreverworld:init/rules

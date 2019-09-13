# Must run as a specific player.
# Forces the player's spawnpoint (rather than relying on a bed)
# In theory, this should only ever run when the player has set their spawnpoint
# ie: we assume the spawnpoint is currently loaded

kill @e[type=minecraft:armor_stand,tag=foreverworld_playerstand]
execute store success score @s fwspawn run data get entity @s SpawnX
execute if entity @s[scores={fwspawn=1}] at @s run summon minecraft:armor_stand ~ ~ ~ {Marker:1b, Invisible:1b, Invulnerable:1b, NoGravity:1b, Tags:["foreverworld_playerstand"], CustomName:"[{\"text\":\"foreverworld playerstand\"}]"}
execute if entity @s[scores={fwspawn=1}] store result entity @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,limit=1] Pos[0] double 1.0 run data get entity @s SpawnX
execute if entity @s[scores={fwspawn=1}] store result entity @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,limit=1] Pos[1] double 1.0 run data get entity @s SpawnY
execute if entity @s[scores={fwspawn=1}] store result entity @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,limit=1] Pos[2] double 1.0 run data get entity @s SpawnZ
execute if entity @s[scores={fwspawn=1}] at @e[type=minecraft:armor_stand,tag=foreverworld_playerstand,limit=1] run spawnpoint @s ~ ~ ~
kill @e[type=minecraft:armor_stand,tag=foreverworld_playerstand]

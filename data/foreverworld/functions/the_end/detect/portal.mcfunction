execute as @e[tag=foreverworld_exit_portal] at @s unless block ~ ~-1 ~ minecraft:bedrock run kill @s
execute in minecraft:the_end positioned 0 255 0 align xyz unless entity @e[tag=foreverworld_exit_portal,distance=..250] run kill @e[tag=foreverworld_exit_portal]

execute in minecraft:the_end unless entity @e[tag=foreverworld_exit_portal] run summon minecraft:armor_stand 0 255 0 {Marker:1b, Invulnerable: 1b, Glowing:1b, Invisible:1b, NoGravity:1b, Tags:["foreverworld_exit_portal"], CustomName:"[{\"text\":\"foreverworld exit portal\"}]"}
execute as @e[tag=foreverworld_exit_portal] at @s unless block ~ ~-1 ~ minecraft:bedrock run function foreverworld:the_end/detect/portal/quick
execute as @e[tag=foreverworld_exit_portal] at @s unless block ~ ~-1 ~ minecraft:bedrock run function foreverworld:the_end/detect/portal/slow

execute as @e[tag=foreverworld_exit_portal] at @s unless block ~ ~-1 ~ minecraft:bedrock run kill @s
execute in minecraft:the_end positioned 0 255 0 align xyz unless entity @e[tag=foreverworld_exit_portal,distance=..250] run kill @e[tag=foreverworld_exit_portal]

execute as @e[tag=foreverworld_exit_portal] at @s if block ~ ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~ ~-4 ~2 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~2 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~2 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~ ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~ ~-4 ~-2 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~-2 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~-2 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~ minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
#execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
#execute as @e[tag=foreverworld_exit_portal] at @s if block ~1 ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~2 ~-4 ~ minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~2 ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~2 ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~ minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
#execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
#execute as @e[tag=foreverworld_exit_portal] at @s if block ~-1 ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

execute as @e[tag=foreverworld_exit_portal] at @s if block ~-2 ~-4 ~ minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~-2 ~-4 ~-1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open
execute as @e[tag=foreverworld_exit_portal] at @s if block ~-2 ~-4 ~1 minecraft:end_portal run tag @e[tag=foreverworld_exit_portal] add foreverworld_exit_portal_open

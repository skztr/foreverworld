function foreverworld:spawnpoint/find_playerstand
execute if entity @e[tag=foreverworld_playerstand_found] run kill @e[tag=foreverworld_playerstand_found]
scoreboard players reset @s fwpsid
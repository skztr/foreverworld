execute store success score @s fwlocal run scoreboard players get @s fwspawnx
execute unless entity @s[scores={fwlocal=1}] run function foreverworld:spawnpoint/legacy/store
scoreboard players reset @s fwlocal

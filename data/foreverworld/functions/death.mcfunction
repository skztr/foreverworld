tag @a remove foreverworld_dead
tag @a[scores={fwdead=1..}] add foreverworld_dead
scoreboard players set @a fwdead 0
tag @a[tag=foreverworld_dead] add foreverworld_died

execute as @a[tag=foreverworld_died,tag=!foreverworld_death_cleared] run function foreverworld:death/clear
execute as @a[tag=foreverworld_died,tag=foreverworld_death_cleared] run function foreverworld:death/wait
execute as @e[tag=foreverworld_died,tag=foreverworld_death_ready] run function foreverworld:death/resurrect

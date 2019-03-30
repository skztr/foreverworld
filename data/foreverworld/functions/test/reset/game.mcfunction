execute as @a run function foreverworld:test/reset/player
kill @e[tag=foreverworld_marker]
scoreboard players set #foreverworld_global fwinit 0
scoreboard players set #foreverworld_global fwstate 0

# Must run as a specific entity
execute store result score @a[tag=foreverworld_debug_once,limit=1] fwdebugx run data get entity @s Pos[0]
execute store result score @a[tag=foreverworld_debug_once,limit=1] fwdebugy run data get entity @s Pos[1]
execute store result score @a[tag=foreverworld_debug_once,limit=1] fwdebugz run data get entity @s Pos[2]

title @a[tag=foreverworld_debug_once] reset
title @a[tag=foreverworld_debug_once] actionbar [{"selector":"@s"},{"text":" @ ["},{"score":{"name":"@a[tag=foreverworld_debug_once,limit=1]","objective":"fwdebugx"}},{"text":", "},{"score":{"name":"@a[tag=foreverworld_debug_once,limit=1]","objective":"fwdebugy"}},{"text":", "},{"score":{"name":"@a[tag=foreverworld_debug_once,limit=1]","objective":"fwdebugz"}},{"text":"]"}]

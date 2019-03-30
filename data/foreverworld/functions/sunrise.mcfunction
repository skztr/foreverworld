scoreboard players set #foreverworld_global fwdawn 0
execute store result score #foreverworld_global fwdawn run time query daytime
scoreboard players remove #foreverworld_global fwdawn 24000

# Jump gametime forward until we reach dawn
execute if score #foreverworld_global fwdawn matches ..-16384 run time add 16384
execute if score #foreverworld_global fwdawn matches ..-16384 run scoreboard players add #foreverworld_global fwdawn 16384

execute if score #foreverworld_global fwdawn matches ..-8192 run time add 8192
execute if score #foreverworld_global fwdawn matches ..-8192 run scoreboard players add #foreverworld_global fwdawn 8192

execute if score #foreverworld_global fwdawn matches ..-4096 run time add 4096
execute if score #foreverworld_global fwdawn matches ..-4096 run scoreboard players add #foreverworld_global fwdawn 4096

execute if score #foreverworld_global fwdawn matches ..-2048 run time add 2048
execute if score #foreverworld_global fwdawn matches ..-2048 run scoreboard players add #foreverworld_global fwdawn 2048

execute if score #foreverworld_global fwdawn matches ..-1024 run time add 1024
execute if score #foreverworld_global fwdawn matches ..-1024 run scoreboard players add #foreverworld_global fwdawn 1024

execute if score #foreverworld_global fwdawn matches ..-512 run time add 512
execute if score #foreverworld_global fwdawn matches ..-512 run scoreboard players add #foreverworld_global fwdawn 512

execute if score #foreverworld_global fwdawn matches ..-256 run time add 256
execute if score #foreverworld_global fwdawn matches ..-256 run scoreboard players add #foreverworld_global fwdawn 256

execute if score #foreverworld_global fwdawn matches ..-128 run time add 128
execute if score #foreverworld_global fwdawn matches ..-128 run scoreboard players add #foreverworld_global fwdawn 128

execute if score #foreverworld_global fwdawn matches ..-64 run time add 64
execute if score #foreverworld_global fwdawn matches ..-64 run scoreboard players add #foreverworld_global fwdawn 64

execute if score #foreverworld_global fwdawn matches ..-32 run time add 32
execute if score #foreverworld_global fwdawn matches ..-32 run scoreboard players add #foreverworld_global fwdawn 32

execute if score #foreverworld_global fwdawn matches ..-16 run time add 16
execute if score #foreverworld_global fwdawn matches ..-16 run scoreboard players add #foreverworld_global fwdawn 16

execute if score #foreverworld_global fwdawn matches ..-8 run time add 8
execute if score #foreverworld_global fwdawn matches ..-8 run scoreboard players add #foreverworld_global fwdawn 8

execute if score #foreverworld_global fwdawn matches ..-4 run time add 4
execute if score #foreverworld_global fwdawn matches ..-4 run scoreboard players add #foreverworld_global fwdawn 4

execute if score #foreverworld_global fwdawn matches ..-2 run time add 2
execute if score #foreverworld_global fwdawn matches ..-2 run scoreboard players add #foreverworld_global fwdawn 2

execute if score #foreverworld_global fwdawn matches ..-1 run time add 1
execute if score #foreverworld_global fwdawn matches ..-1 run scoreboard players add #foreverworld_global fwdawn 1

weather rain 1

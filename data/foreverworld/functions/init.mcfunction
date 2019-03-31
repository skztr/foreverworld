# Versions / Upgrade Path
scoreboard objectives add fw_this_version dummy
scoreboard players set #foreverworld_global fw_this_version 1

# Version of the current world
scoreboard objectives add fwversion dummy

# Detect pre-versioned marker
execute if entity @e[type=minecraft:armor_stand,tag=foreverworld_marker] unless score #foreverworld_global fwversion matches 0.. run scoreboard players set #foreverworld_global fwversion 0

# Default version
execute unless score #foreverworld_global fwversion matches 0.. run scoreboard players operation #foreverworld_global fwversion = #foreverworld_global fw_this_version

# Global State
scoreboard objectives add fwreload dummy
scoreboard players set #foreverworld_global fwreload 1

scoreboard objectives add fwlocal dummy
scoreboard objectives add fwstate dummy
scoreboard objectives add fwinit dummy

# Test Tracking
scoreboard objectives add fwtest dummy
scoreboard objectives add fwdebug dummy
scoreboard objectives add fwdebugx dummy
scoreboard objectives add fwdebugy dummy
scoreboard objectives add fwdebugz dummy

# Delays to avoid race conditions
scoreboard objectives add fwcountdown dummy

# For forcing a sunrise without a bed
scoreboard objectives add fwdawn dummy

# Death Tracking
scoreboard objectives add fwdead deathCount

# Total Deaths, just for statistics
scoreboard objectives add fwdied deathCount

# Unique Id for Spawnpoint tracking
scoreboard objectives add fwpsid dummy
scoreboard objectives add fwpsfind dummy

# Upgrade
execute unless score #foreverworld_global fwversion >= #foreverworld_global fw_this_version run say upgrade required
execute unless score #foreverworld_global fwversion >= #foreverworld_global fw_this_version run function foreverworld:upgrade

# Initial State
execute unless score #foreverworld_global fwstate matches 0.. run say state zero
execute unless score #foreverworld_global fwstate matches 0.. run scoreboard players set #foreverworld_global fwstate 0

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

function foreverworld:state

tag @e[tag=foreverworld_marker] add foreverworld_marker_restarted
execute unless entity @e[type=minecraft:armor_stand,tag=foreverworld_marker] run function foreverworld:init/spawnchunks

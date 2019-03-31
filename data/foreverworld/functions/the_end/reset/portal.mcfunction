# Deactivate the center portal so there is no escape
function foreverworld:the_end/detect/portal
execute at @e[tag=foreverworld_exit_portal_open] run fill ~-1 ~-4 ~-1 ~1 ~-4 ~-2 minecraft:air
execute at @e[tag=foreverworld_exit_portal_open] run fill ~-1 ~-4 ~-1 ~1 ~-4 ~-2 minecraft:air
execute at @e[tag=foreverworld_exit_portal_open] run fill ~-1 ~-4 ~1 ~1 ~-4 ~2 minecraft:air
execute at @e[tag=foreverworld_exit_portal_open] run fill ~2 ~-4 ~1 ~1 ~-4 ~-1 minecraft:air
execute at @e[tag=foreverworld_exit_portal_open] run fill ~-2 ~-4 ~1 ~-1 ~-4 ~-1 minecraft:air

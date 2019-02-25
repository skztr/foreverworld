function foreverworld:test/reset/player

tellraw @s {"text":"(fake initial) The player should be teleported to a random location"}
tag @s add foreverworld_test_run

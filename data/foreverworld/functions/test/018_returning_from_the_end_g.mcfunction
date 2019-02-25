function foreverworld:test/util/make_bed
time set night

tellraw @s {"text":"(step 7/12) sleep in the bed"}
tag @s add foreverworld_test_run

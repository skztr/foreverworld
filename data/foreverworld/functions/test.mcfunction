execute unless entity @s[scores={fwtest=0..}] run scoreboard players set @s fwtest 0
execute if entity @s[scores={fwtest=0}] run function foreverworld:test/000_compass_should_point_north
execute if entity @s[scores={fwtest=1}] run function foreverworld:test/001_first_join_should_spread
execute if entity @s[scores={fwtest=2}] run function foreverworld:test/002_first_death_should_spread
execute if entity @s[scores={fwtest=3}] run function foreverworld:test/003_next_death_should_spread
execute if entity @s[scores={fwtest=4}] run function foreverworld:test/004_death_should_empty_ender_a
execute if entity @s[scores={fwtest=5}] run function foreverworld:test/005_death_should_empty_ender_b
execute if entity @s[scores={fwtest=6}] run function foreverworld:test/006_death_should_empty_ender_c
execute if entity @s[scores={fwtest=7}] run function foreverworld:test/007_death_should_clear_adv_a
execute if entity @s[scores={fwtest=8}] run function foreverworld:test/008_death_should_clear_adv_b
execute if entity @s[scores={fwtest=9}] run function foreverworld:test/009_death_should_clear_adv_c
execute if entity @s[scores={fwtest=10}] run function foreverworld:test/010_death_should_ignore_bed_a
execute if entity @s[scores={fwtest=11}] run function foreverworld:test/011_death_should_ignore_bed_b
execute if entity @s[scores={fwtest=12}] run function foreverworld:test/012_returning_from_the_end_a
execute if entity @s[scores={fwtest=13}] run function foreverworld:test/013_returning_from_the_end_b
execute if entity @s[scores={fwtest=14}] run function foreverworld:test/014_returning_from_the_end_c
execute if entity @s[scores={fwtest=15}] run function foreverworld:test/015_returning_from_the_end_d
execute if entity @s[scores={fwtest=16}] run function foreverworld:test/016_returning_from_the_end_e
execute if entity @s[scores={fwtest=17}] run function foreverworld:test/017_returning_from_the_end_f
execute if entity @s[scores={fwtest=18}] run function foreverworld:test/018_returning_from_the_end_g
execute if entity @s[scores={fwtest=19}] run function foreverworld:test/019_returning_from_the_end_h
execute if entity @s[scores={fwtest=20}] run function foreverworld:test/020_returning_from_the_end_i
execute if entity @s[scores={fwtest=21}] run function foreverworld:test/021_returning_from_the_end_j
execute if entity @s[scores={fwtest=22}] run function foreverworld:test/022_returning_from_the_end_k
execute if entity @s[scores={fwtest=23}] run function foreverworld:test/023_returning_from_the_end_l
execute if entity @s[scores={fwtest=24}] run function foreverworld:test/024_death_at_dawn_should_not_ts
execute if entity @s[scores={fwtest=25}] run function foreverworld:test/025_death_at_noon_should_ts
execute if entity @s[scores={fwtest=26}] run function foreverworld:test/026_death_at_night_should_ts
execute if entity @s[scores={fwtest=27}] run function foreverworld:test/027_death_in_rain_should_clear
execute if entity @s[scores={fwtest=28}] run function foreverworld:test/028_dragon_should_respawn_a
execute if entity @s[scores={fwtest=29}] run function foreverworld:test/029_dragon_should_respawn_b
execute if entity @s[scores={fwtest=30}] run function foreverworld:test/030_dragon_should_respawn_c
execute if entity @s[scores={fwtest=31}] run function foreverworld:test/031_dragon_should_respawn_d
execute if entity @s[scores={fwtest=32}] run function foreverworld:test/032_dragon_should_respawn_e
execute if entity @s[scores={fwtest=33}] run function foreverworld:test/033_dragon_should_respawn_f
execute if entity @s[scores={fwtest=34}] run function foreverworld:test/034_game_should_pause_a
execute if entity @s[scores={fwtest=35}] run function foreverworld:test/035_game_should_pause_b
execute if entity @s[scores={fwtest=36}] run function foreverworld:test/036_game_should_pause_c
execute if entity @s[scores={fwtest=37}] run function foreverworld:test/037_death_clears_recipes_a
execute if entity @s[scores={fwtest=38}] run function foreverworld:test/038_death_clears_recipes_b
execute if entity @s[scores={fwtest=39}] run function foreverworld:test/039_death_clears_recipes_c
execute if entity @s[scores={fwtest=40}] run function foreverworld:test/040_returning_to_the_nether_a
execute if entity @s[scores={fwtest=41}] run function foreverworld:test/041_returning_to_the_nether_b
execute if entity @s[scores={fwtest=42}] run function foreverworld:test/042_returning_to_the_nether_c
execute if entity @s[scores={fwtest=43}] run function foreverworld:test/043_returning_to_the_nether_d
execute if entity @s[scores={fwtest=44}] run function foreverworld:test/044_returning_to_the_nether_e
execute if entity @s[scores={fwtest=45}] run function foreverworld:test/045_returning_to_the_nether_f
execute if entity @s[scores={fwtest=46}] run function foreverworld:test/046_returning_to_the_nether_g
execute if entity @s[scores={fwtest=47}] run function foreverworld:test/047_returning_to_the_nether_h
execute if entity @s[scores={fwtest=48}] run function foreverworld:test/048_returning_to_the_nether_i
execute if entity @s[scores={fwtest=49}] run function foreverworld:test/049_returning_to_the_nether_j
execute if entity @s[scores={fwtest=50}] run function foreverworld:test/050_returning_to_the_nether_k
execute if entity @s[scores={fwtest=51}] run function foreverworld:test/051_returning_to_the_nether_l
execute if entity @s[scores={fwtest=52}] run function foreverworld:test/052_returning_to_the_nether_m
execute if entity @s[scores={fwtest=53}] run function foreverworld:test/053_returning_to_the_nether_n
execute if entity @s[scores={fwtest=54}] run function foreverworld:test/054_returning_to_the_nether_o
execute if entity @s[scores={fwtest=55}] run function foreverworld:test/055_returning_to_the_nether_p

scoreboard players add @a[tag=foreverworld_test_run] fwtest 1
tag @a[tag=foreverworld_test_run] remove foreverworld_test_run
execute if entity @s[scores={fwtest=56}] run tellraw @s {"text":"Tests Complete"}
execute if entity @s[scores={fwtest=56}] run scoreboard players set @s fwtest 0

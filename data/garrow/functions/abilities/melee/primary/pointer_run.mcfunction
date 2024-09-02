## # Ayden_Foxx | September 2nd, 2024
# Updates a Pointer's timer; Once it reaches zero, the entity "explodes", inflicting harmful effects.

scoreboard players remove @s goldark.ability_timer 1

tp @s ~ ~ ~ ~ ~10

particle cloud ~ ~0.5 ~ 0.1 0.5 0.1 0.01 10

# On Dark difficulty, the reddish flames are replaced by soul fire;
execute unless score $goldark_diff goldark.world_difficulty matches 4 run particle flame ^ ^ ^1 0 0 0 0 2
execute unless score $goldark_diff goldark.world_difficulty matches 4 run particle flame ^ ^ ^-1 0 0 0 0 2

execute if score $goldark_diff goldark.world_difficulty matches 4 run particle soul_fire_flame ^ ^ ^1 0 0 0 0 2
execute if score $goldark_diff goldark.world_difficulty matches 4 run particle soul_fire_flame ^ ^ ^-1 0 0 0 0 2

execute if score @s goldark.ability_timer matches 0 run function garrow:abilities/melee/primary/pointer_end
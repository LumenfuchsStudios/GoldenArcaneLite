## # Ayden_Foxx | August 31st - September 1st, 2024
# Runs effects from dash function every tick; Ends with a third, separate function.

scoreboard players add @s goldark.ability_timer 1

particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.1 5

effect give @a[tag=garrow.in_battle, distance=..8] darkness 5 0
effect give @a[tag=garrow.in_battle, distance=16..24] slowness 5 0

execute store result score $garrow_dash_hp goldark.weapon_cooldown run data get entity @s Health
execute if score $garrow_pre-dash_health goldark.weapon_cooldown > $garrow_dash_hp goldark.weapon_cooldown run function garrow:abilities/dash/end

execute if score @s goldark.ability_timer matches 100 run function garrow:abilities/dash/end
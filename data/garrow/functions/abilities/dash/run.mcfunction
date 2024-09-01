## # Ayden_Foxx | August 31st, 2024
# Runs effects from dash function every tick; Ends with a third, separate function.

particle end_rod ~ ~0.5 ~ 0.0 0.0 0.0 0.1 5

effect give @a[distance=..8] darkness 5 0 true

execute if score @s goldark.ability_clock matches 100 run function garrow:abilities/dash/end
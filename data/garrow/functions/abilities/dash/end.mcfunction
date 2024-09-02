## # Ayden_Foxx | August 31st - September 1st, 2024
# Ends a dash function; Must be run after "init" and "run".

execute if score @s goldark.ability_timer matches 100 run particle cloud ~ ~0.5 ~ 0.0 1.0 0.0 0.1 30
execute unless score @s goldark.ability_timer matches 100 run particle large_smoke ~ ~0.5 ~ 0.0 1.0 0.0 0.1 30

effect clear @s invisibility
effect clear @s speed

function garrow:set_armor

scoreboard players set @s goldark.ability_clock -200
scoreboard players reset @s goldark.ability_timer

tag @s remove garrow.dash_mode
tag @s remove goldark.stop_combat
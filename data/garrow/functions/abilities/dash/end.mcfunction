## # Ayden_Foxx | August 31st - September 1st, 2024
# Ends a dash function; Must be run after "init" and "run".

particle cloud ~ ~0.5 ~ 0.0 1.0 0.0 0.2 30

effect clear @s invisibility
effect clear @s speed

function garrow:set_armor

scoreboard players set @s goldark.ability_clock -200

tag @s remove garrow.dash_mode
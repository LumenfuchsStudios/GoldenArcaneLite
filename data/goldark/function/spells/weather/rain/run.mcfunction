## # AydenTFoxx @ September 10th, 2024

# * Weather: Rain (RUN) - Causes rain to fall unto the world for a while.

# ? Run by: Marker [tag: goldark.run_spell.weather_rain]


scoreboard players remove @s goldark.ability_timer 1

particle crit ~ ~0.5 ~ 0.1 0.1 0.1 1 10

execute if score @s goldark.ability_timer matches 0 run function goldark:spells/weather/rain/end
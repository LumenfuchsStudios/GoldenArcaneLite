## # AydenTFoxx @ September 10th, 2024

# * Weather: Clear (RUN) - Clears any rain or thunderstorm running in the world, for some time, though.

# ? Run by: Marker [tag: goldark.run_spell.weather_clear]


scoreboard players remove @s goldark.ability_timer 1

particle crit ~ ~0.5 ~ 0.1 0.1 0.1 1 10

execute if score @s goldark.ability_timer matches 0 run function goldark:spells/weather/clear/end
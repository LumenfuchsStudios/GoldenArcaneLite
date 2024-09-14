## # AydenTFoxx @ September 10th, 2024

# * Weather: Clear (END) - Clears any rain or thunderstorm running in the world, for some time, though.

# ? Run by: Marker [tag: goldark.run_spell.weather_clear, score: { goldark.ability_timer: 0 }]


particle cloud ~ ~0.5 ~ 0.1 0.1 0.1 0.05 20 force

playsound entity.generic.extinguish_fire player @a[distance=..16] ~ ~ ~ 1 1.5


weather clear 24000

kill @s
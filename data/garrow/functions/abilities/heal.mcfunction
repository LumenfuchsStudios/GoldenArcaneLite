## # Ayden_Foxx | August 31st, 2024
# Heals Golden Arrow and gives it a small boost for a short while.

particle instant_effect ~ ~0.5 ~ 0.5 0.5 0.5 1 20
playsound entity.witch.celebrate hostile @a[distance=..16] ~ ~ ~ 1 0.5

effect give @s instant_damage 1 4
effect give @s strength 20 1
effect give @s speed 12 0
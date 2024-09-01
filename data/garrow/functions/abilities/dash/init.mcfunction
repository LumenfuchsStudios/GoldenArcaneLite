## # Ayden_Foxx | August 31st, 2024
# Initializes Golden Arrow's dash ability; Must be followed by "run" for proper effect.

particle cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.5 30
playsound entity.phantom.bite hostile @a[distance=..16] ~ ~ ~ 1 0.5

clear @s

effect give @s invisibility infinite 0 true
effect give @s speed infinite 1 true

tag @s add garrow.dash_mode
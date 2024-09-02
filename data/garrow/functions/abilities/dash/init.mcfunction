## # Ayden_Foxx | August 31st - September 1st, 2024
# Initializes Golden Arrow's dash ability; Must be followed by "run" for proper effect.

particle cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.1 30
playsound entity.phantom.bite hostile @a[distance=..16] ~ ~ ~ 1 0.5

clear @s

effect give @s invisibility infinite 0 true
effect give @s speed infinite 1 true

execute store result score $garrow_pre-dash_hp goldark.weapon_cooldown run data get entity @s Health

tag @s add garrow.dash_mode
tag @s add goldark.stop_combat
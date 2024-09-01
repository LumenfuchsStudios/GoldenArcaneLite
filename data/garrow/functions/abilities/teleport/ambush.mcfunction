## # Ayden_Foxx | August 31st - September 1st, 2024
# Variant of "deflect", teleports Golden Arrow just behind the player; Almost always triggers melee mode.

execute at @p if block ^ ^1 ^4 air run tag @s add garrow.run_teleport

execute if entity @s[tag=garrow.run_teleport] run particle end_rod ~ ~0.5 ~ 0.0 1.0 0.0 0.5 20
execute if entity @s[tag=garrow.run_teleport] run playsound entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~

execute if entity @s[tag=garrow.run_teleport] run tp @s ^ ^ ^4

execute if entity @s[tag=garrow.run_teleport] run particle portal ~ ~0.5 ~ 0.0 1.0 0.0 0.5 30

execute if entity @s[tag=garrow.run_teleport] run scoreboard players set @s goldark.ability_clock -150
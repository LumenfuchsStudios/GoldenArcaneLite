## # Ayden_Foxx | August 31st, 2024
# Teleports Golden Arrow to the opposite direction behind the player; For use with ranged mode.

execute at @p if block ^ ^1 ^8 air run tag @s add garrow.run_teleport

execute if entity @s[tag=garrow.run_teleport] run particle reverse_portal ~ ~0.5 ~ 0.0 1.0 0.0 0.5 20
execute if entity @s[tag=garrow.run_teleport] run playsound entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~

execute if entity @s[tag=garrow.run_teleport] run tp @s ^ ^ ^8

execute if entity @s[tag=garrow.run_teleport] run particle portal ~ ~0.5 ~ 0.0 1.0 0.0 0.5 20

execute if entity @s[tag=garrow.run_teleport] run scoreboard players set @s goldark.ability_clock -300
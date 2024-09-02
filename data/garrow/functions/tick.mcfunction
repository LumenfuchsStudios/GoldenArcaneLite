## # Ayden_Foxx | August 31st - September 2nd, 2024
# General code for Golden Arrow's AI behavior; Runs every tick.

## GENERIC

# Update Golden Arrow's bossbar.
execute store result bossbar goldark:golden_arrow value run data get entity @s Health

# If the entity falls in the Void, teleport it just above the player.
execute if block ~ ~8 ~ void_air run particle portal ~ ~ ~ 0 1 0 1 30
execute if block ~ ~8 ~ void_air at @p run particle cloud ~ ~8 ~ 0 1 0 0.5 30
execute if block ~ ~8 ~ void_air at @p run tp @s ~ ~8 ~

## COMBAT

# Swap weapons dynamically depending on player proximity; Disabled while dashing.
execute unless entity @s[tag=goldark.stop_combat] if entity @a[tag=garrow.in_battle, distance=..24] run function garrow:weapons/swap_mode

# Run Golden Arrow's ability module while a player is nearby.
execute unless entity @s[tag=goldark.stop_combat] if entity @a[tag=garrow.in_battle, distance=..24] run function garrow:abilities/main

## RUNAWAY

# When far enough from Golden Arrow, a timeout begins; Reaching its limit despawns Golden Arrow with no rewards.
scoreboard players add @a[tag=garrow.in_battle, distance=25..] goldark.flee_timeout 1

# This can, however, be reduced and even reset by returning to proximity with the entity.
scoreboard players remove @a[tag=garrow.in_battle, scores={goldark.flee_timeout=2..}, distance=..24] goldark.flee_timeout 2
scoreboard players reset @a[tag=garrow.in_battle, scores={goldark.flee_timeout=1}, distance=..24]

# Run the respective effects and eventual despawn for being too afar from Golden Arrow.
execute unless entity @a[tag=garrow.in_battle, distance=..24] run function garrow:events/player_flees
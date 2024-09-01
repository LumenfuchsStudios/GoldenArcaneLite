## # Ayden_Foxx | August 31st - September 1st, 2024
# Displays a chat message, audiovisual effects, and despawns Golden Arrow.

# `distance` is used to only target living players within the same dimension.
tellraw @a[tag=garrow.in_battle, distance=0..] { "text": "Golden Arrow returns to the shadows...", "color": "gray" }
tellraw @a[tag=!garrow.in_battle, distance=0..] { "text": "The darkness recedes...", "color": "gray" }

playsound entity.generic.extinguish_fire hostile @a[distance=..24] ~ ~ ~ 1 0.5
particle large_smoke ~ ~ ~ 0.5 1 0.5 0 30 force

bossbar remove goldark:golden_arrow

tag @s remove goldark.golden_arrow
tag @a remove garrow.in_battle

teleport @s 0 -128 0
kill @s
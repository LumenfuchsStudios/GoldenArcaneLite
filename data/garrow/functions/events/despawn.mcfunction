## # Ayden_Foxx | August 31st, 2024
# Displays a chat message, audiovisual effects, and despawns Golden Arrow.

tellraw @a[distance=..32] { "text": "Golden Arrow returns to the shadows...", "color": "gray" }
tellraw @a[distance=32..] { "text": "The darkness recedes...", "color": "gray" }

playsound entity.generic.extinguish_fire hostile @a[distance=..24] ~ ~ ~ 1 0.5
particle large_smoke ~ ~ ~ 1.0 1.5 1.0 0.2 30 force

bossbar remove goldark:golden_arrow

tag @s remove goldark.golden_arrow
tag @a remove garrow.in_battle

teleport @s 0 -128 0
kill @s
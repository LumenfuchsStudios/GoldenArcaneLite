## # Ayden_Foxx | August 31st, 2024
# Displays a chat message, audiovisual effects and spawns loot upon Golden Arrow's defeat.

tellraw @a[distance=..24] { "text": "Golden Arrow has been defeated!", "color": "green" }
tellraw @a[distance=25..] { "text": "The day seems bright again.", "color": "green" }

playsound entity.wither.death hostile @a[distance=..24] ~ ~ ~ 1 0.5

tag @a remove garrow.in_battle

bossbar remove goldark:golden_arrow
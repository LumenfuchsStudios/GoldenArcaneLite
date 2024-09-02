## # Ayden_Foxx | August 31st - September 2nd, 2024
# Displays a chat message, audiovisual effects, and despawns Golden Arrow.
# If used with the "replace" tag, Golden Arrow disappears with special effects, and the despawn message is not shown.

# `distance` is used to only target living players within the same dimension.
execute unless entity @s[tag=garrow.replace] run tellraw @a[tag=garrow.in_battle, distance=0..] { "text": "Golden Arrow returns to the shadows...", "color": "gray" }
execute unless entity @s[tag=garrow.replace] run tellraw @a[tag=!garrow.in_battle, distance=0..] { "text": "The darkness recedes...", "color": "gray" }

execute unless entity @s[tag=garrow.replace] run playsound entity.generic.extinguish_fire hostile @a[distance=..24] ~ ~ ~ 1 0.5
execute if entity @s[tag=garrow.replace] run playsound entity.enderman.teleport hostile @a[distance=..24] ~ ~ ~ 1 0.5

execute unless entity @s[tag=garrow.replace] run particle large_smoke ~ ~ ~ 0.5 1 0.5 0 30 force
execute if entity @s[tag=garrow.replace] run particle cloud ~ ~ ~ 0.5 1 0.5 0 30 force
execute if entity @s[tag=garrow.replace] run particle portal ~ ~ ~ 0.5 1 0.5 1 30 force

bossbar remove goldark:golden_arrow

tag @s remove goldark.golden_arrow
tag @a remove garrow.in_battle

teleport @s 0 -128 0
kill @s
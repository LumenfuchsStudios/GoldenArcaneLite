## # AydenTFoxx - August 31st - September 8th, 2024

# * "Despawns" the current Golden Arrow instance, removing its tag and killing it outside the world.
# * If used with the "replace_instance" tag, a "teleport" effect is played instead, and no message is shown.

# ? Run as: Stray [limit: 1, tag: goldark.golden_arrow]


# "distance=0.." is used to only target living players within the same dimension.
execute unless entity @s[tag=garrow.tools.replace_instance] run tellraw @a[tag=garrow.player.in_battle, distance=0..] { "translate": "goldark.golden_arrow.events.despawn_near", "color": "gray" }
execute unless entity @s[tag=garrow.tools.replace_instance] run tellraw @a[tag=!garrow.player.in_battle, distance=0..] { "translate": "goldark.golden_arrow.events.despawn_afar", "color": "gray" }

execute unless entity @s[tag=garrow.tools.replace_instance] run particle large_smoke ~ ~ ~ 0.5 1 0.5 0 30 force

execute if entity @s[tag=garrow.tools.replace_instance] run playsound entity.enderman.teleport hostile @a[distance=..24] ~ ~ ~ 1 0.5

execute if entity @s[tag=garrow.tools.replace_instance] run particle cloud ~ ~ ~ 0.5 1 0.5 0 30 force
execute if entity @s[tag=garrow.tools.replace_instance] run particle portal ~ ~ ~ 0.5 1 0.5 1 30 force


bossbar remove goldark:golden_arrow

scoreboard players reset @s

tag @s remove goldark.golden_arrow
tag @a remove garrow.player.in_battle

teleport @s ~ -128 ~

kill @s
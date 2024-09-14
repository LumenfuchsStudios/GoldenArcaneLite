## # AydenTFoxx - September 8th - 12th, 2024

# * This function runs every [GoldArk] tick to execute and update Golden Arrow's behavior.

# ? Run as: Stray [limit: 1, tag: goldark.golden_arrow]


# Despawn when no player is nearby.
execute unless entity @p[tag=garrow.player.in_battle, distance=..48] run function garrow:instance/despawn

# Update bossbar: Update value & remove distant players.
bossbar set goldark:golden_arrow players @a[distance=..32]

execute store result bossbar goldark:golden_arrow value run data get entity @e[type=stray, limit=1, tag=goldark.golden_arrow] Health

# Upon proximity with a player, swap weapons for a suitable combat style.
execute if entity @a[tag=garrow.player.in_battle, distance=..24] run function garrow:instance/weapons/swap_mode
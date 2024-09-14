## # AydenTFoxx - August 31st - September 8th, 2024

# * Alternates Golden Arrow's fighting styles between Melee and Ranged, depending on the nearest player's distance.
# * Has a cooldown between weapon swaps, which can be bypassed if the player is obnoxiously close to Golden Arrow.

# ? Run as: Stray [tag: goldark.golden_arrow]


scoreboard players remove @s[scores={ goldark.weapon_cooldown=1.. }] goldark.weapon_cooldown 1

execute if entity @s[tag=!garrow.melee_mode, scores={ goldark.weapon_cooldown=0 }] if entity @p[distance=..6] run function garrow:instance/weapons/set_melee
execute if entity @s[tag=!garrow.melee_mode] if entity @p[distance=..2] run function garrow:instance/weapons/set_melee

execute if entity @s[tag=!garrow.ranged_mode, scores={ goldark.weapon_cooldown=0 }] unless entity @p[distance=..8] run function garrow:instance/weapons/set_ranged
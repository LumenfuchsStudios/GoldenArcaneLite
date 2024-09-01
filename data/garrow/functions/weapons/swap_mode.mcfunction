## # Ayden_Foxx | August 31st, 2024
# Swaps between Melee (w/ double swords) and Ranged (w/ a bow) modes, depending on player proximity.
# Has a cooldown on swapping unless directly adjacent to the player. (enabling Melee mode immediately)

scoreboard players remove @s[scores={ goldark.weapon_cooldown=1.. }] goldark.weapon_cooldown 1

execute if entity @s[tag=garrow.ranged_mode, scores={ goldark.weapon_cooldown=0 }] if entity @a[distance=..6] run function garrow:weapons/melee
execute if entity @s[tag=garrow.ranged_mode] if entity @a[distance=..2] run function garrow:weapons/melee

execute if entity @s[tag=garrow.melee_mode, scores={ goldark.weapon_cooldown=0 }] unless entity @a[distance=..8] run function garrow:weapons/ranged

# If neither modes are active, assume Ranged by default upon proximity with a targetable player.
execute if entity @s[tag=!garrow.melee_mode, tag=!garrow.ranged_mode] if entity @a[tag=garrow.in_battle, distance=..12] run tag @s add garrow.ranged_mode
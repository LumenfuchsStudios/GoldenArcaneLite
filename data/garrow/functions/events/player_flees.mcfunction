## # Ayden_Foxx | August 31st, 2024
# When the player goes too far from Golden Arrow for a long period, it despawns.
# Additionally, should the player be too close when their timer ends, they'll receive severe penalties as well.

# Inflict negative status effects on the player if afar for too long.
effect give @a[scores={goldark.flee_timeout=200..}, distance=25..] nausea 10 0 false
effect give @a[scores={goldark.flee_timeout=800..}, distance=25..] wither 10 0 false

# If all players are completely out of range, Golden Arrow despawns.
execute unless entity @a[tag=garrow.in_battle, distance=..48] run function garrow:events/despawn

# Alternatively, if players are only somewhat near for a while, Golden Arrow also despawns.
# Furthermore, if the triggering player is within a 32-block radius, it receives magic damage.
execute as @a[scores={goldark.flee_timeout=3000}, distance=..32] run damage @s 8 indirect_magic by @e[type=stray, tag=goldark.golden_arrow, limit=1]

execute if entity @a[scores={goldark.flee_timeout=3000}, distance=..32] run playsound entity.wither.death hostile @a[distance=..32] ~ ~ ~ 1 0.5

execute if entity @a[tag=garrow.in_battle, scores={goldark.flee_timeout=3000}] run function garrow:events/despawn
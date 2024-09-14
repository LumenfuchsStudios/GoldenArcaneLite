## # AydenTFoxx - September 8th, 2024

# * This function provides a center point for all of goldark module's functions.

# ? Run by: GoldArk's Core Functions Manager (goldark:main_tick)


# Run Golden Arrow's custom behavior.
execute as @e[type=stray, tag=goldark.golden_arrow] at @s run function garrow:instance/tick

# Teleport 
execute as @e[type=marker, tag=goldark.golden_arrow_marker] at @s run teleport @s @e[type=stray, tag=goldark.golden_arrow, limit=1, sort=nearest]
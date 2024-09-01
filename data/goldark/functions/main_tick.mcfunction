## # Ayden_Foxx | August 31st, 2024
# The Core of GoldArk -- Runs all relevant code from the datapack every tick.


## Golden Arrow:
# Run Golden Arrow's AI features while it is present in the world.
execute as @e[type=stray, tag=goldark.golden_arrow] at @s run function garrow:tick

# Run defeat function when G. Arrow is no longer present.
execute as @a[tag=garrow.in_battle] unless entity @e[type=stray, tag=goldark.golden_arrow] run function garrow:events/death
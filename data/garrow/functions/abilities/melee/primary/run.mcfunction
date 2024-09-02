## # Ayden_Foxx | September 2nd, 2024
# LAMINA TENEBRIS: Golden Arrow's main Melee mode attack.
# Run: Spawn slashes periodically at each nearby player's position.
# If two lines cross each other, they explode at the same time.

scoreboard players add @s goldark.ability_clock 1
scoreboard players operation @s goldark.ability_timer /= @s goldark.ability_clock

#execute if score @s goldark.ability_timer matches 1 run
## # Ayden_Foxx | September 1st, 2024
# LAMINA TENEBRIS: Golden Arrow's main Melee mode attack.
# Prepare-Run: Audiovisual effects during Golden Arrow's preparation phase before atttacking.

scoreboard players remove @s goldark.ability_timer 1

particle cloud ~ ~0.5 ~ 0 0 0 0.5 5

execute if score @s goldark.ability_timer matches 0 run function garrow:abilities/melee/primary/prepare_end

scoreboard players reset @s[scores={ goldark.ability_timer=0 }] goldark.ability_timer
## # Ayden_Foxx | September 1st, 2024
# Selects and lights up blocks at the player's facing direction.
# Also summons pointer entities; These are managed by the "run" function instead.

# Set pointers in a straight line based on the player's position.
execute if block ~ ~ ~-1 air positioned ~ ~ ~-1 run function garrow:abilities/melee/primary/pointer_set
execute if block ~ ~ ~ air run function garrow:abilities/melee/primary/pointer_set
execute if block ~ ~ ~1 air positioned ~ ~ ~1 run function garrow:abilities/melee/primary/pointer_set
execute if block ~ ~ ~2 air positioned ~ ~ ~2 run function garrow:abilities/melee/primary/pointer_set

# If on Dark difficulty, a second line is drawn perpendicular to the first.
execute if score $goldark_diff goldark.world_difficulty matches 4 if block ~-1 ~ ~ air positioned ~-1 ~ ~ run function garrow:abilities/melee/primary/pointer_set
execute if score $goldark_diff goldark.world_difficulty matches 4 if block ~1 ~ ~ air positioned ~1 ~ ~ run function garrow:abilities/melee/primary/pointer_set
execute if score $goldark_diff goldark.world_difficulty matches 4 if block ~2 ~ ~ air positioned ~2 ~ ~ run function garrow:abilities/melee/primary/pointer_set
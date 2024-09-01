## # Ayden_Foxx | August 31st - September 1st, 2024
# Creates all scoreboards & relevant data for all modules/namespaces.
# Also updates world-based values on startup.


## Weapon Cooldown (garrow, goldark?)
# Adds a cooldown for weapon-based abilities, like Golden Arrow's weapon swap.
scoreboard objectives add goldark.weapon_cooldown dummy

## Ability Clock (garrow)
# Adds a clock for running entities' abilities; Also doubles as a cooldown.
scoreboard objectives add goldark.ability_clock dummy

## Ability Timer (garrow)
# Adds a timer for the duration of an entity's ability.
scoreboard objectives add goldark.ability_timer dummy

## Flee Timeout (garrow)
# A timeout which ticks when players are too far from certain boss monsters.
scoreboard objectives add goldark.flee_timeout dummy


## World Difficulty (goldark)
# Golden Arcane's own difficulty meter. On every reload, it updates itself to the game's vanilla difficulty.
# On Dark mode, Hard is checked instead; If below that, Dark mode is disabled and updated to the world's difficulty.
scoreboard objectives add goldark.world_difficulty dummy

execute store result score $goldark_diff_reload goldark.world_difficulty run difficulty

execute unless score $goldark_diff goldark.world_difficulty = $goldark_diff_reload goldark.world_difficulty unless score $goldark_diff goldark.world_difficulty matches 4 store result score $goldark_diff goldark.world_difficulty run difficulty
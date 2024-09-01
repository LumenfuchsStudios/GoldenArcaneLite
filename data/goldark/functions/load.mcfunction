## # Ayden_Foxx | August 31st, 2024
# Creates all scoreboards & relevant data for all modules/namespaces.


## Weapon Cooldown (garrow, goldark?)
# Adds a cooldown for weapon-based abilities, like Golden Arrow's weapon swap.
scoreboard objectives add goldark.weapon_cooldown dummy

## Ability Timer (garrow)
# Adds a timer for special entities' abilities; Also doubles as a cooldown.
scoreboard objectives add goldark.ability_clock dummy

## Flee Timeout (garrow)
# A timeout which ticks when players are too far from certain boss monsters.
scoreboard objectives add goldark.flee_timeout dummy
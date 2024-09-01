## # Ayden_Foxx | August 31st, 2024
# Runs Golden Arrow's abilities every few ticks; Available abilities depend on current mode.
# All abilities have a *chance* to run; If none do, the function is reset and starts ticking again.

# Internal clock; On the specified intervals, the entity attempts to run a special ability.
scoreboard players add @s goldark.ability_clock 1


## Dash (300t, -300t cooldown | Melee Only)
# "Dashes" towards the nearest player, becoming fast and invisible for a short while.
execute if score @s goldark.ability_clock matches 600 if predicate goldark:random_33 if entity @s[tag=garrow.melee_mode] run function garrow:abilities/dash/init

execute if entity @s[tag=garrow.dash_mode] run function garrow:abilities/dash/run

## Teleport (1200t, -300/-600t cooldown | Any)
# Teleports the entity behind the player. Has a variant where it goes even closer, triggering melee mode.
execute if score @s goldark.ability_clock matches 1200 unless predicate goldark:random_25 run function garrow:abilities/teleport/deflect

execute if entity @s[scores={goldark.ability_clock=1800}, tag=!garrow.run_teleport] if predicate goldark:random_25 run function garrow:abilities/teleport/ambush

tag @s[tag=garrow.run_teleport] remove garrow.run_teleport

## Heal (1800t, no cooldown | Ranged Only)
# Heals Golden Arrow near the end of every cycle.
execute if score @s goldark.ability_clock matches 1800 if predicate goldark:random_50 run function garrow:abilities/heal


# Repeat every cycle by resetting the clock.
scoreboard players reset @s[scores={goldark.ability_clock=2400}] goldark.ability_clock
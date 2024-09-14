## # AydenTFoxx @ August 31st - September 1st, 2024

# * Creates scoreboards and value holders for usage by GoldArk's various modules.

# ? Run by: #minecraft:load


## Dummy (any)
# A featureless scoreboard with no specific function of its own;
# Used whenever a scoreboard is needed but code is too local or minor to warrant a brand new objective.
scoreboard objectives add goldark.dummy dummy

# Some values are set here for ease of code:
scoreboard players set $GARROW_QUARTER_HP goldark.dummy 25
scoreboard players set $GARROW_HALF_HP goldark.dummy 50

scoreboard players set $goldark_tick_rate goldark.dummy 1


## Spell Use (goldark)
# Triggers whenever a player uses a Spell vessel. Can be technically triggered elsewhere, but who the hell *uses* Paper like a consumable anyway?
scoreboard objectives add goldark.using_spell used:paper


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

# Some values are set up for reference and ease of coding:
scoreboard players set $EASY_MODE goldark.world_difficulty 1
scoreboard players set $MEDIUM_MODE goldark.world_difficulty 2
scoreboard players set $HARD_MODE goldark.world_difficulty 3
scoreboard players set $DARK_MODE goldark.world_difficulty 4

execute store result score $goldark_diff_reload goldark.world_difficulty run difficulty

execute unless score $goldark_diff goldark.world_difficulty = $DARK_MODE goldark.world_difficulty store result score $goldark_diff goldark.world_difficulty run difficulty
execute if score $goldark_diff goldark.world_difficulty = $DARK_MODE goldark.world_difficulty unless score $goldark_diff_reload goldark.world_difficulty = $HARD_MODE goldark.world_difficulty store result score $goldark_diff goldark.world_difficulty run difficulty


## * v0.1.0 Compatibility Fix
# ? Upon loading the world, if any mid-dash Golden Arrow instance is detected, its status effects and respective tag are removed.
# ! This is a temporary 0.1.0 -> 0.2.0 compatibility fix, and will be removed within the next update.

effect clear @e[type=stray, tag=goldark.golden_arrow, tag=garrow.dash_mode] speed
effect clear @e[type=stray, tag=goldark.golden_arrow, tag=garrow.dash_mode] invisibility
tag @e[type=stray, tag=goldark.golden_arrow, tag=garrow.dash_mode] remove garrow.dash_mode

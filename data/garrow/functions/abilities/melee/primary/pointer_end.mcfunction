## # Ayden_Foxx | September 2nd, 2024
# "Explodes" an expired Pointer, dealing damage to nearby mobs and inflicting varied debuffs.
# If another Pointer is detected in adjacent blocks, it also explodes.

particle explosion ~ ~0.5 ~ 0 0 0 1 2
particle cloud ~ ~0.5 ~ 0.5 0.5 0.5 0.1 20

playsound entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 0.8 1.5

execute as @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=..1] run damage @s 12 explosion by @e[type=stray, tag=goldark.golden_arrow, limit=1]
execute as @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=2..3] run damage @s 10 explosion by @e[type=stray, tag=goldark.golden_arrow, limit=1]
execute as @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=4..5] run damage @s 8 explosion by @e[type=stray, tag=goldark.golden_arrow, limit=1]
execute as @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=6..7] run damage @s 6 explosion by @e[type=stray, tag=goldark.golden_arrow, limit=1]
execute as @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=8..9] run damage @s 4 explosion by @e[type=stray, tag=goldark.golden_arrow, limit=1]
execute as @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=10] run damage @s 2 explosion by @e[type=stray, tag=goldark.golden_arrow, limit=1]

# On Dark difficulty, the Wither II effect is replaced by the GoldArk-exclusive "Inferno" debuff.
execute unless score $goldark_diff goldark.world_difficulty = $DARK_MODE goldark.world_difficulty run effect give @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=..3] wither 5 1
execute if score $goldark_diff goldark.world_difficulty = $DARK_MODE goldark.world_difficulty run tag @e[type=!armor_stand, tag=!goldark.golden_arrow, distance=..4] add goldark.inferno_effect

execute if block ~ ~2 ~ light run setblock ~ ~2 ~ air

# If a Pointer is nearby and had not reached its expiration time yet, set it to its limit.
# The next tick, that Pointer will also expire on its own.
scoreboard players set @e[type=armor_stand, tag=garrow.pointer_dummy, scores={ goldark.ability_timer=..99 }, distance=..2] goldark.ability_timer 100
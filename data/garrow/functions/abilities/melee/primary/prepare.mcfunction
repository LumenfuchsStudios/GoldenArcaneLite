## # Ayden_Foxx | September 1st, 2024
# LAMINA TENEBRIS: Golden Arrow's main Melee mode attack.
# Prepare: The user is warned in advance of the next attack; Golden Arrow stops attacking and becomes temporarily vulnerable.

tellraw @a[tag=garrow.in_battle] { "text": "Golden Arrow is preparing something grim...", "color": "red", "hoverEvent": { "action": "show_text", "contents": [ { "text": "Next attack: " }, { "text": "LAMINA TENEBRIS", "color": "dark_gray", "bold": true } ] } }

playsound entity.generic.extinguish_fire hostile @a[distance=..16] ~ ~ ~ 1 0.5

function garrow:events/vulnerability

tag @s add goldark.stop_combat

# A timer is set to the entity, counted down elsewhere. When depleted, the actual attack begins.
scoreboard players set @s goldark.ability_timer 100
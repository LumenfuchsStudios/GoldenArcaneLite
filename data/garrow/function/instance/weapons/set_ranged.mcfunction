## # Ayden_Foxx | August 31st - September 12th, 2024

# * Changes Golden Arrow's combat style to Ranged mode, with a common bow for long-range attacks.

# ? Run as: Stray [tag: goldark.golden_arrow]
# ? Triggers a (100-tick) cooldown after being run.


# Goner Bow: Fractal of the Past
item replace entity @s weapon.mainhand with bow[ item_name='{ "text": "Goner Bow", "italic": false }', lore=[ '{ "text": "Oddly mundane.", "italic": false, "color": "gray" }' ], enchantments={ power: 2, infinity: 1 } ]

# Air: the ultimate weapon.
item replace entity @s weapon.offhand with air


particle cloud ~ ~ ~ 0.0 0.0 0.0 0.05 10

tag @s add garrow.combat.ranged_mode
tag @s remove garrow.combat.melee_mode

scoreboard players set @s goldark.weapon_cooldown 100
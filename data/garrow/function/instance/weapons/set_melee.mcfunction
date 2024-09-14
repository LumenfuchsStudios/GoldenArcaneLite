## # AydenTFoxx - August 31st - September 12th, 2024

# * Swaps Golden Arrow's fighting style to Melee combat, with dual swords for close-ranged attack.
# * Rarely, Golden Arrow will swap both swords' placement,

# ? Run as: Stray [tag: goldark.golden_arrow]
# ? Triggers a (100-tick) cooldown after being run.


execute unless entity @s[tag=garrow.tools.invert_melee] if predicate goldark:random_10 run tag @s add garrow.tools.invert_melee
execute if entity @s[tag=garrow.tools.invert_melee] unless predicate goldark:random_10 run tag @s remove garrow.tools.invert_melee


# Banishment: Smite of the Living
execute unless entity @s[tag=garrow.tools.invert_melee] run item replace entity @s weapon.mainhand with golden_sword[ item_name='{ "text": "Banishment", "italic": false, "color": "yellow" }', lore=[ '{ "text": "Divine hellfire..." }' ], enchantments={ sharpness: 3, bane_of_arthropods: 2, mending: 1 } ]
execute if entity @s[tag=garrow.tools.invert_melee] run item replace entity @s weapon.offhand with golden_sword[ item_name='{ "text": "Banishment", "italic": false, "color": "yellow" }', lore=[ '{ "text": "Divine hellfire..." }' ], enchantments={ sharpness: 3, bane_of_arthropods: 2, vanishing_curse: 1 } ]

# Demise: Bane of the Dead
execute unless entity @s[tag=garrow.tools.invert_melee] run item replace entity @s weapon.offhand with golden_sword[ item_name='{ "text": "Demise", "italic": false, "color": "gold" }', lore=[ '{ "text": "Unpleasantly painful." }' ], enchantments={ smite: 4, fire_aspect: 2, vanishing_curse: 1 } ]
execute if entity @s[tag=garrow.tools.invert_melee] run item replace entity @s weapon.mainhand with golden_sword[ item_name='{ "text": "Demise", "italic": false, "color": "gold" }', lore=[ '{ "text": "Unpleasantly painful." }' ], enchantments={ smite: 4, fire_aspect: 2, unbreaking: 2 } ]


particle flame ~ ~ ~ 0.0 0.0 0.0 0.05 10

tag @s add garrow.combat.melee_mode
tag @s remove garrow.combat.ranged_mode

scoreboard players set @s goldark.weapon_cooldown 100
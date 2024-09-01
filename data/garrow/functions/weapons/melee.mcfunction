## # Ayden_Foxx | August 31st - September 1st, 2024
# Replaces Golden Arrow's currently held items with golden swords.
# Both this and the "ranged" function trigger a cooldown, but have no check on it before running.

# With a 1/10 chance, Golden Arrow will swap its swords, using Demise instead as its main weapon.
# Afterwards, there is a 9/10 chance it will revert on the next weapon swap.
execute unless entity @s[tag=garrow.invert_melee] if predicate goldark:random_10 run tag @s add garrow.invert_melee
execute if entity @s[tag=garrow.invert_melee] unless predicate goldark:random_10 run tag @s remove garrow.invert_melee

# Banishment: Smite of the Living
execute unless entity @s[tag=garrow.invert_melee] run item replace entity @s weapon.mainhand with golden_sword{ display: { Name: '{ "text": "Banishment", "italic": false, "color": "yellow" }', Lore: [ '{ "text": "Divine hellfire..." }' ] }, Enchantments: [ { id: sharpness, lvl: 3 }, { id: bane_of_arthropods, lvl: 2 }, { id: mending, lvl: 1 } ] }
execute if entity @s[tag=garrow.invert_melee] run item replace entity @s weapon.offhand with golden_sword{ display: { Name: '{ "text": "Banishment", "italic": false, "color": "yellow" }', Lore: [ '{ "text": "Divine hellfire..." }' ] }, Enchantments: [ { id: sharpness, lvl: 3 }, { id: bane_of_arthropods, lvl: 2 }, { id: vanishing_curse, lvl: 1 } ] }

# Demise: Bane of the Dead
execute unless entity @s[tag=garrow.invert_melee] run item replace entity @s weapon.offhand with golden_sword{ display: { Name: '{ "text": "Demise", "italic": false, "color": "gold" }', Lore: [ '{ "text": "Unpleasantly painful." }' ] }, Enchantments: [ { id: smite, lvl: 4 }, { id: fire_aspect, lvl: 2 }, { id: vanishing_curse, lvl: 1 } ] }
execute if entity @s[tag=garrow.invert_melee] run item replace entity @s weapon.mainhand with golden_sword{ display: { Name: '{ "text": "Demise", "italic": false, "color": "gold" }', Lore: [ '{ "text": "Unpleasantly painful." }' ] }, Enchantments: [ { id: smite, lvl: 4 }, { id: fire_aspect, lvl: 2 }, { id: unbreaking, lvl: 2 } ] }

tag @s add garrow.melee_mode
tag @s remove garrow.ranged_mode

scoreboard players set @s goldark.weapon_cooldown 100
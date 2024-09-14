## # AydenTFoxx - August 31st - September 12th, 2024

# * Replaces the target entity's worn armory with an enchanted Golden armor set, referred to as the "Fallen" set.
# * This armor is never dropped by its wearer, as it is always destroyed upon death.

# ? Run as: Stray [tag: goldark.golden_arrow]


item replace entity @s armor.feet with golden_boots[ item_name='{ "text": "Fallen Threaders" }', lore=[ '{ "text": "These seem quite worn out." }' ], enchantments={ fire_protection: 3, depth_strider: 2, unbreaking: 1, vanishing_curse: 1 } ]

item replace entity @s armor.legs with golden_leggings[ item_name='{ "text": "Fallen Leggings" }', lore=[ '{ "text": "Some power still lingers within..." }' ], enchantments={ blast_protection: 3, unbreaking: 2, vanishing_curse: 1 } ]

item replace entity @s armor.chest with golden_chestplate[ item_name='{ "text": "Fallen Chestplate" }', lore=[ '{ "text": "It shimmers with ancient power." }' ], enchantments={ protection: 3, unbreaking: 2, vanishing_curse: 1 } ]

item replace entity @s armor.head with golden_helmet[ item_name='{ "text": "Golden Crown" }', lore=[ '{ "text": "It brims with a power unlike anything else." }' ], enchantments={ protection: 4, projectile_protection: 4, mending: 1, vanishing_curse: 1 } ]
## # AydenTFoxx - September 8th - 12th, 2024

# * Enables/disables a set of attributes and effects to the target entity, making it a bit somewhat more endurant and boss-like.
# * Used by Golden Arrow's summoning and weakening functions.

# ? Run as: Stray [tag=goldark.golden_arrow]


data merge entity @s[tag=garrow.tools.toggle_attributes] { active_effects: [ { id: resistance, duration: -1, amplifier: 1, show_particles: 0b }, { id: fire_resistance, duration: -1, amplifier: 1, show_particles: 0b } ], attributes: [ { id: "generic.armor", base: 4f }, { id: "generic.armor_toughness", base: 4f }, { id: "generic.attack_damage", base: 3f }, { id: "generic.knockback_resistance", base: 0.2f }, { id: "generic.follow_range", base: 24f }, { id: "generic.movement_speed", base: 0.25f } ] }

execute if entity @s[tag=garrow.tools.toggle_attributes] run return run tag @s remove garrow.tools.toggle_attributes


data merge entity @s[tag=!garrow.tools.toggle_attributes] { active_effects: [ { id: resistance, duration: 1 }, { id: fire_resistance, duration: 1 } ], attributes: [ { id: "generic.armor", base: 0f }, { id: "generic.armor_toughness", base: 0f }, { id: "generic.attack_damage", base: 1f }, { id: "generic.knockback_resistance", base: 0f }, { id: "generic.follow_range", base: 8f }, { id: "generic.movement_speed", base: 0.15f } ] }

execute if entity @s[tag=!garrow.tools.toggle_attributes] run return run tag @s add garrow.tools.toggle_attributes
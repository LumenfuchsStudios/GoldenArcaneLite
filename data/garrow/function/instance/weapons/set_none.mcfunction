## # Ayden_Foxx | September 1st - 12th, 2024

# * Removes Golden Arrow's weaponry and combat mode tags; If the mob's AI is still running, it assumes melee combat by default.
# * As a more discreet function for use with special attacks, it has no other effect.

# ? Run by: Stray [tag: goldark.golden_arrow]


item replace entity @s weapon.mainhand with air

item replace entity @s weapon.offhand with air

tag @s[tag=garrow.ranged_mode] remove garrow.ranged_mode
tag @s[tag=garrow.melee_mode] remove garrow.melee_mode
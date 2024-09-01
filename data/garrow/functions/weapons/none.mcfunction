## # Ayden_Foxx | September 1st, 2024
# Removes Golden Arrow's held items; As per Skeleton AI, the entity assumes Melee mode by default afterwards.
# Unlike the other two functions, this does not trigger a cooldown.

item replace entity @s weapon.mainhand with air

item replace entity @s weapon.offhand with air

tag @s[tag=garrow.ranged_mode] remove garrow.ranged_mode
tag @s[tag=garrow.melee_mode] remove garrow.melee_mode
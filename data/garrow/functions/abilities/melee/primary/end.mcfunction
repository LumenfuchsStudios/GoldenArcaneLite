## # Ayden_Foxx | September 2nd, 2024
# LAMINA TENEBRIS: Golden Arrow's main Melee mode attack.
# End: Removes debuffs from players and Golden Arrow's invulnerability; The fight resumes to a normal pace.

effect clear @a[tag=garrow.in_battle] darkness
effect clear @a[tag=garrow.in_battle] slowness

data merge entity @s { Invulnerable: 0b, NoAI: 0b }

tag @s remove goldark.invulnerable
tag @s remove goldark.stop_combat

tag @s remove garrow.melee_primary

scoreboard players reset @s goldark.ability_clock
scoreboard players reset @s goldark.ability_timer
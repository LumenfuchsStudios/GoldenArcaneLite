## # Ayden_Foxx | September 1st - 2nd, 2024
# LAMINA TENEBRIS: Golden Arrow's main Melee mode attack.
# Prepare-End: Finishes Golden Arrow's preparation; Triggers invulnerability and inflicts effects upon nearby players.

effect give @a[tag=garrow.in_battle, distance=..32] darkness infinite 0 true
effect give @a[tag=garrow.in_battle, distance=..24] slowness infinite 2 true

data merge entity @s { NoAI: 1b, Invulnerable: 1b }

# Call the Vulnerability Toggle event again to disable vulnerability.
function garrow:events/vulnerability

tag @s add goldark.invulnerable

tp @s ~ ~3 ~
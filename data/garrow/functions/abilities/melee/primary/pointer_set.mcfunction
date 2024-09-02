## # Ayden_Foxx | September 1st - 2nd, 2024
# Summons a pointer dummy (armor stand) at the invoked location.
# For use with attack functions; Does nothing otherwise.

execute align xyz run summon armor_stand ~0.5 ~-1 ~0.5 { CustomName: '{ "text": "GARROW_POINTER" }', Tags: [ garrow.pointer_dummy ], Invisible: 1b, Invulnerable: 1b, Small: 1b }

execute if block ~ ~1 ~ air run setblock ~ ~1 ~ light

execute align xyz run particle witch ~ ~0.5 ~ 0 0.5 0 0.5 10

# A timer is set for the individual entity, counted down elsewhere. When it reaches 0, the pointer expires.
scoreboard players set @e[type=armor_stand, tag=garrow.pointer_dummy, distance=..1] goldark.ability_timer 100
## # Ayden_Foxx | August 31st - September 2nd, 2024
# Initializes a new Golden Arrow instance; If one already exists, it is erased.

# Removal of any already-present Golden Arrow instance...

tag @e[type=stray, tag=goldark.golden_arrow] add garrow.replace

execute at @e[type=stray, tag=garrow.replace] run function garrow:events/despawn

# Summoning of new Golden Arrow instance...

summon stray ~ ~ ~ { CustomName: '[ { "text": "Golden Arrow", "color": "yellow" } ]', CustomNameVisible: 0b, Health: 100, PersistenceRequired: 1b, ActiveEffects: [ { Id: 11, Duration: -1, Amplifier: 1, ShowParticles: 0b }, { Id: 12, Duration: -1, ShowParticles: 0b } ], Attributes: [ { Name: "generic.armor", Base: 4f }, { Name: "generic.armor_toughness", Base: 4f }, { Name: "generic.attack_damage", Base: 3f }, { Name:"generic.knockback_resistance", Base: 0.2f }, { Name: "generic.follow_range", Base: 24f }, { Name:"generic.max_health", Base:100f }, { Name: "generic.movement_speed", Base: 0.3f } ], Tags: [ "goldark.golden_arrow" ] }

execute as @e[type=stray, tag=goldark.golden_arrow] run function garrow:set_armor

bossbar add goldark:golden_arrow {"text": "Golden Arrow", "color": "yellow" }
bossbar set goldark:golden_arrow color yellow
bossbar set goldark:golden_arrow players @a

tag @a[distance=..24] add garrow.in_battle

tellraw @a[distance=..24] { "text": "Golden Arrow has awoken!", "color": "gold" }
tellraw @a[distance=25..] { "text": "A grim threat has risen from the depths...", "color": "gray" }

playsound minecraft:entity.wither.ambient master @a[distance=0..] ~ ~ ~ 1 0.5
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2
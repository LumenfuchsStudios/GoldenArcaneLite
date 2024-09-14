## # AydenTFoxx - August 31st - September 12th, 2024

# * Creates a new Golden Arrow instance, a modified Stray with multiple effects and its own bossbar.
# * Any already-existing instance "despawns" (i.e. it is removed) right before the new one is summoned.


tag @e[type=stray, tag=goldark.golden_arrow] add garrow.tools.replace_instance

execute as @e[type=stray, tag=garrow.tools.replace_instance] at @s run function garrow:instance/despawn


summon stray ~ ~ ~ { CustomName: '[ { "text": "Golden Arrow", "color": "yellow" } ]', CustomNameVisible: 0b, Health: 100, PersistenceRequired: 1b, attributes: [ { id: "generic.max_health", base: 100f } ], Tags: [ "goldark.golden_arrow", "garrow.tools.toggle_attributes" ], HandDropChances: [ 0.5f, 0f ] }


execute as @e[type=stray, tag=goldark.golden_arrow, limit=1, sort=nearest] run function garrow:instance/set_armor
execute as @e[type=stray, tag=goldark.golden_arrow, limit=1, sort=nearest] run function garrow:instance/toggle_attributes

bossbar add goldark:golden_arrow {"text": "Golden Arrow", "color": "yellow" }
bossbar set goldark:golden_arrow color yellow

tag @a[distance=..24] add garrow.player.in_battle

# TODO: Add method to detect if a player has defeated Golden Arrow before.
tellraw @a[distance=..24] { "translate": "goldark.golden_arrow.status_messages.summon_near.first", "color": "gold" }
tellraw @a[distance=..24, tag=tba] { "translate": "goldark.golden_arrow.status_messages.summon_near.rematch", "color": "gold" }

tellraw @a[distance=25..] { "translate": "goldark.golden_arrow.status_messages.summon_afar.first", "color": "gray" }
tellraw @a[distance=25.., tag=tba] { "translate": "goldark.golden_arrow.status_messages.summon_afar.rematch", "color": "gray" }
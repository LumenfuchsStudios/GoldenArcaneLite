## # Ayden_Foxx | August 31st, 2024
# Replaces Golden Arrow's main weapon with a ranged bow, and removes any secondary items.
# Both this and the "ranged" function trigger a cooldown, but make no check on it before running.

# Goner Bow: Fractal of the Past
item replace entity @s weapon.mainhand with bow{ display: { Name: '{ "text": "Goner Bow", "italic": false }', Lore: [ '{ "text": "Oddly mundane.", "italic": false, "color": "gray" }' ] }, Enchantments: [ { id: power, lvl: 2 }, { id: infinity, lvl: 1 } ] }

# Air: the ultimate item.
item replace entity @s weapon.offhand with air

tag @s add garrow.ranged_mode
tag @s remove garrow.melee_mode

scoreboard players set @s goldark.weapon_cooldown 100
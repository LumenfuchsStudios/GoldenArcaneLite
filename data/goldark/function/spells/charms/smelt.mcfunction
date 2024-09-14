## # AydenTFoxx @ September 11th, 2024

# * Smelt - Smelts the user's offhand item, as if putting it in a furnace.

# ? Magic Type: CHARM (Instantaneous)
# ? Run by: Player [Charm]


execute store result score @s goldark.dummy run data get entity @s SelectedItem.count

# // clear @s[gamemode=!creative] paper[minecraft:custom_data={ goldark.charm_id: "smelt" }] 1

playsound item.firecharge.use player @s ~ ~ ~ 0.8 0.7

particle flame ~ ~1 ~ 0.1 0.1 0.1 0.05 15

item modify entity @s weapon.offhand goldark:smelt
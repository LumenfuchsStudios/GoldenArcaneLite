## # AydenTFoxx @ September 12th, 2024

# * Runs every registered spell to check if the player is currently using it.

# ? Run by: Player [scores: { goldark.using_spell: 1.. }]


execute if items entity @s weapon.mainhand paper[minecraft:custom_data={ goldark.charm_id: "smelt" }] run function goldark:spells/charms/smelt

execute if items entity @s weapon.mainhand paper[minecraft:custom_data={ goldark.spell_id: "weather_clear" }] run function goldark:spells/weather/clear/init
execute if items entity @s weapon.mainhand paper[minecraft:custom_data={ goldark.spell_id: "weather_rain" }] run function goldark:spells/weather/rain/init
execute if items entity @s weapon.mainhand paper[minecraft:custom_data={ goldark.spell_id: "weather_thunder" }] run function goldark:spells/weather/thunder/init

scoreboard players reset @s[scores={ goldark.using_spell=1.. }] goldark.using_spell
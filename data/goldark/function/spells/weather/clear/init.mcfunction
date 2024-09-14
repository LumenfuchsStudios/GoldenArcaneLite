## # AydenTFoxx @ September 10th, 2024

# * Weather: Clear (INIT) - Clears any rain or thunderstorm running in the world, for some time, though.

# ? Run by: Player [Spell]


execute if function goldark:spells/failsafe run summon marker ~ ~0.5 ~ { Tags: [ goldark.run_spell.weather_clear ] }

scoreboard players set @e[type=marker, tag=goldark.run_spell.weather_clear, distance=..1, limit=1] goldark.ability_timer 100

execute at @e[type=marker, tag=goldark.run_spell.weather_clear, distance=..1, limit=1] run playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 0.5

execute at @e[type=marker, tag=goldark.run_spell.weather_clear, distance=..1, limit=1] run title @a[distance=..16] actionbar { "translate": "goldark.spells.weather.clear", "fallback": "- Weather: Clear -" }
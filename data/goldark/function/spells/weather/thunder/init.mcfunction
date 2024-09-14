## # AydenTFoxx @ September 10th, 2024

# * Weather: Thunderstorm (INIT) - Conjures a thunderstorm unto the world for a set amount of time.

# ? Run by: Player [Spell]


execute unless function goldark:spells/failsafe run return fail

summon marker ~ ~0.5 ~ { Tags: [ goldark.run_spell.weather_thunder ] }

scoreboard players set @e[type=marker, tag=goldark.run_spell.weather_thunder, distance=..1, limit=1] goldark.ability_timer 100

execute at @e[type=marker, tag=goldark.run_spell.weather_thunder, distance=..1, limit=1] run playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 0.5

execute at @e[type=marker, tag=goldark.run_spell.weather_thunder, distance=..1, limit=1] run title @a[distance=..16] actionbar { "translate": "goldark.spells.weather.thunder", "fallback": "- Weather: Thunderstorm -" }
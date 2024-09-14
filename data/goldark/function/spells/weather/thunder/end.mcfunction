## # AydenTFoxx @ September 10th, 2024

# * Weather: Thunderstorm (END) - Conjures a thunderstorm unto the world for a set amount of time.

# ? Run by: Marker [tag: goldark.run_spell.weather_thunder, score: { goldark.ability_timer: 0 }]


particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.05 20 force

playsound entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 0.8 0.8


weather thunder 24000

kill @s
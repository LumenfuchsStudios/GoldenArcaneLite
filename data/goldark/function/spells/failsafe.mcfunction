## # AydenTFoxx @ September 10th, 2024

# * Manages spells' timer initialization to prevent simultaneous spellcasting.

# ? Run by: Player (On spell "init" function)


playsound block.stone.hit player @s[scores={ goldark.ability_timer=1.. }] ~ ~ ~ 0.8 0.8

title @s[scores={ goldark.ability_timer=1.. }] actionbar { "translate": "goldark.spells.fail.will_unavailable", "fallback": "Your Will is already powering another spell.", "color": "red" }

execute if entity @s[scores={ goldark.ability_timer=1.. }] run return 0

scoreboard players set @s goldark.ability_timer 100

return 1
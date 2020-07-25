execute at @s run particle block red_concrete ~ ~1 ~ 0 .5 0 0.1 50
effect give @s[type=player] instant_damage
# reduce by a heart
scoreboard players set $hpr gunHPR 2
execute if entity @s[type=!player] run function arc86:rifle/mob_reduce_hp
tag @e[tag=last-hit] remove last-hit
tag @s add last-hit
execute at @s run particle block red_concrete ~ ~1 ~ 0 .5 0 0.1 50
effect give @s[type=player] instant_damage
# reduce by a heart
execute if data entity @e[tag=ray,limit=1] SelectedItem.tag.rifle run scoreboard players operation $hpr gunHPR = $rifleHPR gunHPR
execute if data entity @e[tag=ray,limit=1] SelectedItem.tag.pistol run scoreboard players operation $hpr gunHPR = $pistolHPR gunHPR

execute if entity @s[type=!player] run function arc86:guns/mob_reduce_hp
tag @e[tag=last-hit] remove last-hit
tag @s add last-hit
execute store result score $hp gunHPR run data get entity @s Health
scoreboard players operation $hp gunHPR -= $hpr gunHPR
execute store result entity @s Health float 1 run scoreboard players get $hp gunHPR
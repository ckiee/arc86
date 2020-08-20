execute store result score $count barrefillTmp run data get block ~ ~ ~ Items
execute if score $count barrefillTmp matches 0 run scoreboard players add @s barrefillTimer 1

execute if score @s barrefillTimer >= @s barrefillMax run data modify block ~ ~ ~ Items set from block ~ ~-3 ~ Items
execute if score @s barrefillTimer >= @s barrefillMax run scoreboard players reset @s barrefillTimer

# so they cant get out:
spectate @e[tag=lobby-cam,limit=1,sort=nearest,distance=..1]

execute if score @s lobbyCycle = $ lobbyCycle run spectate @e[tag=lobby-cam,limit=1,sort=random,distance=2..]
execute if score @s lobbyCycle = $ lobbyCycle run scoreboard players set @s lobbyCycle 0
scoreboard players add @s lobbyCycle 1

execute store result score $$ lobbyCycle run data get entity @e[tag=lobby-cam,limit=1,distance=..1] UUIDMost 0.0000000000000001
execute if score $$ lobbyCycle matches ..1 run scoreboard players operation $$ lobbyCycle *= $INVERT lobbyCycle
title @s times 0 20 20
title @s title [""]
title @s subtitle ["",{"text":"CAM #","color":"gray"},{"score":{"name":"$$","objective":"lobbyCycle"},"color":"gray"}]
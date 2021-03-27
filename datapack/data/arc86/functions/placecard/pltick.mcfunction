title @s title {"nbt":"ArmorItems[1].tag.Title","entity":"@e[tag=current-placecard]","interpret":true}
title @s subtitle {"nbt":"ArmorItems[1].tag.Subtitle","entity":"@e[tag=current-placecard]","interpret":true}
execute store result score @s placecardUUID0 run data get entity @e[tag=current-placecard,limit=1] UUID[0]
execute unless score @s placecardExpire matches 1.. run scoreboard players set @s placecardExpire 60

execute store result score @s diffset run data get entity @s Item.tag.map
execute store result entity @s Item.tag.map short 1 run data get entity @s Air
execute store result entity @s Air short 1 run scoreboard players get @s diffset

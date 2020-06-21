tag @s remove in-credits
scoreboard players reset @s creditTime
gamemode creative
tp @s -23 150.00 -2 -90 0
effect give @s minecraft:blindness 2 255 true
scoreboard players set @e[tag=flicker-lamp] flickerTime -40
# player was tped so current ~~~ isnt accurate
execute at @s run playsound arc86.red ambient @s ~ ~ ~ 0.7
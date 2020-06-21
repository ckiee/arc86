gamemode adventure @a
tp @s -23 150.00 -2 -90 0
effect give @a minecraft:blindness 2 255 true
scoreboard players set @e[tag=flicker-lamp] flickerTime -40
# player was tped so current ~~~ isnt accurate
execute at @s run playsound arc86.red ambient @s ~ ~ ~ 0.7
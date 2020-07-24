scoreboard players set stage globals 50
gamemode adventure @a
tp @a -158.50 150.00 -9.38 -49.30 -6.90
effect give @a minecraft:blindness 2 255 true
scoreboard players set $state flickerTime 2
execute as @a at @s run playsound arc86:s4 master @s ~ ~ ~ 1 1 1
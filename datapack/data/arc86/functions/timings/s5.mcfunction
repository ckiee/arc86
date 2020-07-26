scoreboard players set stage globals 5
tp @a -57 150 4 0 0
gamemode adventure @a
clear @a
effect give @a blindness 5 255 true
effect give @a slowness 5 255 true
effect give @a invisibility 61 255 true
scoreboard players set $state flickerTime 1
execute as @a at @s run playsound arc86:s5 master @s ~ ~ ~ 1 1
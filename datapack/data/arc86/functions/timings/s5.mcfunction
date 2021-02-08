scoreboard players set stage globals 5
setblock -71 220 18 redstone_block
tp @a -57 220 5 0 90
gamerule sendCommandFeedback false
gamemode adventure @a
gamerule sendCommandFeedback true
clear @a
effect give @a slowness 5 255 true
effect give @a blindness 61 255 true
effect give @a invisibility 61 255 true
scoreboard players set $state flickerTime 1
execute as @a at @s run playsound arc86:s5 master @s ~ ~ ~ 1 1
scoreboard players set @a absubID 1

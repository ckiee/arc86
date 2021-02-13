scoreboard players set stage globals 50
gamerule sendCommandFeedback false
gamemode adventure @a
gamerule sendCommandFeedback true
tp @a -158.50 150.00 -9.38 -49.30 -6.90
effect give @a minecraft:blindness 2 255 true
title @a times 0 30 10
title @a title ["\uEC02"]
scoreboard players set $state flickerTime 2
execute as @a at @s run playsound arc86:s50 master @s ~ ~ ~ 1 1 1
scoreboard players set @a absubID 5
clear @a minecraft:carrot_on_a_stick{KeycardLevel: 1}

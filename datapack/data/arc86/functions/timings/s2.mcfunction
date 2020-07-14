scoreboard players set stage globals 2
execute as @a at @s run playsound arc86:s2 voice @s ~ ~ ~
execute positioned -106 150 -51 run tp @a[distance=20..] ~ ~ ~ 0 -10
execute unless entity @e[tag=introatrium-point] run function arc86:introatrium/prepare
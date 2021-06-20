scoreboard players set stage globals 82
execute as @a at @s run playsound arc86:s82 ambient @s ~ ~ ~ 1 1 1
fill -243 74 -204 -241 75 -204 minecraft:air
team join s82 @a
tp @e[tag=s82-blocker,limit=1] -232.6 74 -163

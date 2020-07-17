execute as @a at @s run function arc86:thermal/scopetick
scoreboard players remove @a[scores={thermal=1..}] thermal 1
scoreboard players add @a[scores={thermal=..-1}] thermal 1
scoreboard players reset @a[scores={thermal=0}] thermal
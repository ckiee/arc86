execute as @e[tag=placecard] at @s if entity @a[distance=..5] run function arc86:placecard/pctick
scoreboard players remove @a[scores={placecardExpire=1..}] placecardExpire 1
scoreboard players reset @a[scores={placecardExpire=0}] placecardExpire

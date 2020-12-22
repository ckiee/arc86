scoreboard players add @e[scores={airlock=0..}] airlock 1
execute as @e[scores={airlock=0..}] at @s if score @s airlock matches 0.. run function arc86:airlock/powered_tick
execute as @e[tag=airlock] at @s run function arc86:airlock/altick

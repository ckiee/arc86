execute as @e[tag=airlock,tag=!airlock-powered] at @s if block ~5 ~1 ~-1 stone_button[powered=true] run function arc86:airlock/on_power
scoreboard players add @e[scores={airlock=0..}] airlock 1
execute as @e[tag=airlock-powered] at @s if score @s airlock matches 0.. run function arc86:airlock/powered_tick

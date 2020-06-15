execute store result score @s doorOpenerKilled positioned ~ ~8 ~ run kill @e[tag=door-opener,distance=..1]
execute if score @s doorOpenerKilled matches 1 run function arc86:doors/opened_event
execute if score @s doorLife matches 7 run setblock ~ ~-1 ~ black_concrete

scoreboard players add @s doorLife 1
scoreboard players reset @s doorOpenerKilled

execute as @e[tag=fang,scores={fang=0}] at @s if entity @a[distance=..1] unless entity @e[type=evoker_fangs,distance=..2] run function arc86:fang/trigger
scoreboard players remove @e[tag=fang,scores={fang=1..}] fang 1

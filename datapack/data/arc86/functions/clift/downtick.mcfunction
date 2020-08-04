data modify entity @s Pos[1] set from entity @e[tag=lift,distance=..5,limit=1] Pos[1]
execute as @e[tag=lift,distance=..5] run data modify entity @s Motion[1] set value -0.045000004458480724d
execute if block ~ ~ ~ air run function arc86:clift/downover

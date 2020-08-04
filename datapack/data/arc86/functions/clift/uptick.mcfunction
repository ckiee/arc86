data modify entity @s Pos[1] set from entity @e[tag=lift,distance=..5,limit=1] Pos[1]
execute as @e[tag=lift,distance=..5] at @s positioned ~ ~3 ~ run effect give @a[distance=..1] minecraft:levitation 5 0 true
execute if score @s cliftTimer matches 4 as @e[tag=lift,distance=..5] run data modify entity @s Motion[1] set value 0.045000004458480724d
execute unless score @s cliftTimer = @s cliftTimer run scoreboard players set @s cliftTimer 0
execute if score @s cliftTimer matches 0..3 run scoreboard players add @s cliftTimer 1
execute if block ~ ~4 ~ air run function arc86:clift/upover

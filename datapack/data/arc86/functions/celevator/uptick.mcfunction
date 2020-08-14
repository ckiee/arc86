data modify entity @s Pos[1] set from entity @e[tag=elevator,distance=..5,limit=1] Pos[1]
execute as @e[tag=elevator,distance=..5] at @s positioned ~ ~3 ~ run effect give @a[distance=..1] minecraft:levitation 5 0 true
execute as @e[tag=elevator,distance=..5] at @s positioned ~ ~3 ~ run effect give @a[distance=..1] minecraft:slowness 5 255 true

execute if score @s celevatorTimer matches 4 as @e[tag=elevator,distance=..5] run data modify entity @s Motion[1] set value 0.045000004458480724d
execute unless score @s celevatorTimer = @s celevatorTimer run scoreboard players set @s celevatorTimer 0
execute if score @s celevatorTimer matches 0..3 run scoreboard players add @s celevatorTimer 1
execute if block ~ ~4 ~ air run function arc86:celevator/upover

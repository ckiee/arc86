tag @s remove elevator-up
scoreboard players reset @s celevatorTimer
say unimpl

execute as @e[tag=elevator,distance=..5] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d], NoGravity: 0b}
execute as @e[tag=elevator,distance=..5] at @s positioned ~ ~3 ~ run effect clear @a[distance=..1] minecraft:levitation
execute as @e[tag=elevator,distance=..5] at @s positioned ~ ~3 ~ run effect clear @a[distance=..1] minecraft:slowness
execute as @e[tag=elevator,distance=..5] at @s run setblock ~ ~-1 ~ barrier
execute as @e[tag=elevator,distance=..5] at @s run setblock ~ ~1 ~ barrier
tag @s remove lift-up
scoreboard players reset @s cliftTimer

execute as @e[tag=lift,distance=..5] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d], NoGravity: 0b}
execute as @e[tag=lift,distance=..5] at @s positioned ~ ~3 ~ run effect clear @a[distance=..1] minecraft:levitation
execute as @e[tag=lift,distance=..5] at @s run setblock ~ ~-1 ~ barrier
execute as @e[tag=lift,distance=..5] at @s run setblock ~ ~1 ~ barrier
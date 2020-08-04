tag @s remove lift-upo
tag @s add lift-down
execute as @e[tag=lift,distance=..5] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d], NoGravity: 0b}
execute as @e[tag=lift,distance=..5] at @s run setblock ~ ~-1 ~ air
execute as @e[tag=lift,distance=..5] at @s run setblock ~ ~1 ~ air
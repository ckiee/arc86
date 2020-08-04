execute as @e[tag=lift,distance=..5] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d], NoGravity: 0b}
tag @s add lift-up
execute as @e[tag=elevator,distance=..5] run data merge entity @s {Motion: [0.0d, 0.0d, 0.0d], NoGravity: 0b}
tag @s add elevator-up
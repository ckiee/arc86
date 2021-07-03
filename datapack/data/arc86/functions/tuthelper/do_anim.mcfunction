kill @e[tag=s1-frame]
fill -107 152 80 -111 154 80 air
execute as @e[tag=s1-anim,type=minecraft:armor_stand] run data modify entity @s NoGravity set value 0b

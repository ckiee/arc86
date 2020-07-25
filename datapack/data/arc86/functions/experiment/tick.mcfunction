# execute as @a[tag=op] at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:experiment/start_ray
#execute as @e[type=arrow] at @s run tp @s ~ ~ ~ facing entity @a[sort=furthest,limit=1,distance=..10] eyes
#execute as @e[type=arrow] at @s run tp @s ^ ^ ^0.1
#execute as @e[type=arrow] run data merge entity @s {NoGravity:1b}
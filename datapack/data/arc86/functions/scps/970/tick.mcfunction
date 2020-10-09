execute as @a[x=-63,y=84,z=-178,dx=0,dy=0,dz=0] at @s run tp @s ~ ~-47 ~
execute as @a[x=-63,y=37,z=-176,dx=0,dy=0,dz=0] at @s run tp @s ~ ~47 ~

#execute as @a[x=-64,y=37,z=-357,dx=-3,dy=4] at @s run tp @s ~ ~ ~105
#effect give @a[x=-64,y=37,z=-350,dx=-3,dy=4] nausea 5 1 true

execute as @e[tag=scp970-ptr] at @s positioned ~ ~ ~64 if entity @a[distance=..10] at @s run function arc86:scps/970/expand

effect give @a[x=-63,y=37,z=-179,dz=-100000000,dx=-5,dy=4,gamemode=adventure] blindness 5 0 true
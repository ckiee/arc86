# execute as @a run execute at @s run scoreboard players set @e[tag=flicker-lamp,distance=..6] flickerTime -30
execute if score $state flickerTime matches 0 run execute as @e[tag=flicker-lamp] at @s run setblock ~ ~ ~ redstone_lamp[lit=false]
execute if score $state flickerTime matches 1 run execute as @e[tag=flicker-lamp] at @s run setblock ~ ~ ~ redstone_lamp[lit=true]
execute if score $state flickerTime matches 2 run execute as @e[tag=flicker-lamp] at @s if entity @a[distance=..35] run function arc86:flicker/lamp_tick

execute as @e[tag=make-flicker] run execute at @s run function arc86:flicker/summon
tp @e[tag=make-flicker] 0 -1000 0

execute as @e[type=item,nbt={Item: {tag: {FLICKER_REMOVER: 1b}}}] run execute at @s run function arc86:flicker/remover_tick
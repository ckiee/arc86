# execute as @a run execute at @s run scoreboard players set @e[tag=flicker-lamp,distance=..6] flickerTime -30
execute if score $flickering flickerTime matches 1 run execute as @e[tag=flicker-lamp] run execute at @s run function arc86:flicker/lamp_tick
execute unless score $flickering flickerTime matches 1 run execute as @e[tag=flicker-lamp] run execute at @s run function arc86:flicker/off_lamp_tick

execute as @e[tag=make-flicker] run execute at @s run function arc86:flicker/summon
tp @e[tag=make-flicker] 0 -1000 0

execute as @e[type=item,nbt={Item: {tag: {FLICKER_REMOVER: 1b}}}] run execute at @s run function arc86:flicker/remover_tick
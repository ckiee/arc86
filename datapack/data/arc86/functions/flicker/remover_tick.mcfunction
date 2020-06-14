execute at @e[tag=flicker-lamp,limit=1,distance=..2] run setblock ~ ~ ~ air
kill @e[tag=flicker-lamp,limit=1,distance=..2]
execute as @p run function arc86:flicker/give_remover
kill @s
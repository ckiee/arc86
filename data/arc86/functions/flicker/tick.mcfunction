execute as @e[tag=flicker-lamp] run execute at @s run function arc86:flicker/lamptick

execute as @e[tag=make-flicker] run function arc86:flicker/summon
kill @e[tag=make-flicker]

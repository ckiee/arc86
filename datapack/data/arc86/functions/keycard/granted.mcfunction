execute as @e[tag=door,sort=nearest,distance=..7] at @s run function arc86:doors/cool_open
title @s actionbar ["",{"text":"Access Granted","color":"green"}]
playsound arc86.granted block @a
execute at @e[tag=door,limit=1,sort=nearest] run playsound arc86.door block @a
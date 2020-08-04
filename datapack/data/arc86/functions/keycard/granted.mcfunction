execute as @e[tag=door,distance=..7] run execute at @s run function arc86:doors/cool_open
title @s actionbar ["",{"text":"Access Granted","color":"green"}]
playsound arc86:keycard.granted block @a[distance=..30] ~ ~ ~ 0.9 1 0.2
execute if score $opened doorCloseTimer matches 1 at @e[tag=door,limit=1,sort=nearest] run playsound arc86:door block @a[distance=..50] ~ ~ ~ 0.9 1 0.1

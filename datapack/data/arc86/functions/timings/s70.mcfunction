scoreboard players set stage globals 70
execute as @a at @s run playsound arc86:s70 master @s ~ ~ ~ 1 1 1
team join s70 @a
effect clear @a
effect give @a minecraft:blindness 100000 0 true
effect give @a minecraft:dolphins_grace 100000 100 true
effect give @a minecraft:invisibility 100000 100 true
title @a times 0 40 10
title @a title ["\uEC02"]

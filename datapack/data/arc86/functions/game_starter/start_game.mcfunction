scoreboard players set stage globals 0
tp @a -37 153 -76 90 0
gamemode adventure @a
clear @a
execute as @a run function arc86:keycard/give_l1
effect give @a blindness 5 255 true
title @a title [""]
title @a subtitle ["",{"text":"0853 Hours. 15th of April, 2012. Northern Seattle."}]
scoreboard players set $state flickerTime 1
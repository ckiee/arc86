# cleanup from s17
scoreboard players reset $passed s17

scoreboard players set stage globals 20
execute as @a at @s run playsound arc86:s20 voice @s ~ ~ ~
scoreboard players set @a absubID 3
# big call, makes like 500 entities
function arc86:introatrium/prepare
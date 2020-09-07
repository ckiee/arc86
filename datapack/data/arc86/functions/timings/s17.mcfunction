# cleanup s10
bossbar set arc86:s10-goal visible false

# this stage is just a passthrough kinda thing
scoreboard players set stage globals 17
execute as @a at @s run playsound arc86:s17 voice @s ~ ~ ~ 1 1 1
scoreboard players set @a absubID 2
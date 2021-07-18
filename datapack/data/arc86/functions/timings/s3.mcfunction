scoreboard players set stage globals 3

# Make sure the button is held down forever by making it not exist ;)
setblock -109 152 78 air destroy
scoreboard players set $projector ambient 0
stopsound @a ambient
execute as @a at @s run playsound arc86:tutorial2 voice @s ~ ~ ~
scoreboard players set @a absubID 48

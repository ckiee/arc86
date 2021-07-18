scoreboard players set stage globals 3

# Make sure the button is held down forever by making it not exist ;)
setblock -109 152 78 air destroy
# Take their stick away so they can't change the slide back after we roll it back to the first one
clear @a minecraft:carrot_on_a_stick{TutorialPointer:1b}

scoreboard players set $projector ambient 0
stopsound @a ambient

execute as @a at @s run playsound arc86:tutorial2 voice @s ~ ~ ~
scoreboard players set @a absubID 48

scoreboard players set $a tuthelper 905001
scoreboard players set $b tuthelper 905002
function arc86:tuthelper/set_model_data

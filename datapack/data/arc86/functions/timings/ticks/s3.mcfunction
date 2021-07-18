execute if score stage_time globals matches 180 run function arc86:tuthelper/do_anim
execute if score stage_time globals matches 200 run function arc86:tuthelper/lights_on
# do_anim takes ~64 ticks, so 180+64 = 244
execute if score stage_time globals matches 244 run function arc86:tuthelper/break_wall
execute as @e[tag=s1-anim,type=armor_stand] run data modify entity @s Motion[1] set value 0.11d

# Just in case a player logged out right before the button was pressed and logged in while it was being rolled up and managed to right-click
clear @a minecraft:carrot_on_a_stick{TutorialPointer:1b}

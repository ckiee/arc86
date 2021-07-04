execute if score stage_time globals matches 180 run function arc86:tuthelper/do_anim
execute if score stage_time globals matches 200 run function arc86:tuthelper/lights_on
# do_anim takes ~64 ticks, so 180+64 = 244
execute if score stage_time globals matches 244 run function arc86:tuthelper/break_wall
execute as @e[tag=s1-anim,type=armor_stand] run data modify entity @s Motion[1] set value 0.11d

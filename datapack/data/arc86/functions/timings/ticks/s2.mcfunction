execute if score stage_time globals matches 60 run function arc86:tuthelper/lights_off
execute if score stage_time globals matches 60 as @a at @s run playsound arc86:tutorial1 voice @s ~ ~ ~
execute if score stage_time globals matches 1076 run function arc86:tuthelper/button_anim
execute if score stage_time globals matches 1235 run scoreboard players set $projector ambient 1
execute if block -109 152 78 minecraft:polished_blackstone_button[powered=true] if score stage_time globals matches 1270.. run function arc86:timings/s3

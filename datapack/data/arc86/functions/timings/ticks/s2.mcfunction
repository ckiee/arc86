execute if score stage_time globals matches 60 run function arc86:tuthelper/lights_off
execute if score stage_time globals matches 60 as @a at @s run playsound arc86:tutorial1 voice @s ~ ~ ~
execute if score stage_time globals matches 60 as @a at @s run scoreboard players set @a absubID 49
execute if score stage_time globals matches 110 run function arc86:tuthelper/inc_models
execute if score stage_time globals matches 110 run function arc86:tuthelper/proj_lights_on
execute if score stage_time globals matches 490 run function arc86:tuthelper/inc_models
execute if score stage_time globals matches 810 run function arc86:tuthelper/inc_models
execute if score stage_time globals matches 1040 run function arc86:tuthelper/inc_models
execute if score stage_time globals matches 1076 run function arc86:tuthelper/button_anim
execute if score stage_time globals matches 1235 run scoreboard players set $projector ambient 1
execute if block -109 152 78 minecraft:polished_blackstone_button[powered=true] if score stage_time globals matches 1270.. run function arc86:timings/s3
execute if score stage_time globals matches 1100 run scoreboard players set $hard tuthelper 0
execute if score stage_time globals matches 1130 run give @a carrot_on_a_stick{TutorialPointer:1b, CustomModelData: 9009, display: {Name: '{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gold","text":"Pointer Stick"}],"text":""}', Lore: ['{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gray","text":"Right-click your selected difficulty."}],"text":""}']}}

scoreboard players operation april_loop_tmp globals = april_loop globals
scoreboard players operation april_loop_tmp globals -= april_loop_offset globals
scoreboard players operation april_loop_tmp globals %= april_loop_time globals

execute if score april_loop_tmp globals matches 1 as @a at @s run playsound arc86:ost.april record @s ~ ~ ~ 1 1 1

scoreboard players add april_loop globals 1
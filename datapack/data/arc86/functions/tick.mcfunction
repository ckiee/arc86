execute as @a[tag=in-credits] at @s run function arc86:credits/tick
execute if score game_started globals matches 1 run scoreboard players add game_time globals 1

execute if score game_time globals matches 0..300 run scoreboard players set @e[tag=flicker-lamp] flickerTime 69
execute if score game_time globals matches 300..500 run scoreboard players set @e[tag=flicker-lamp] flickerTime -69
execute as @a at @s if score game_time globals matches 330 run playsound arc86.yellow voice @s ~ ~ ~
execute if score game_time globals matches 600..799 run scoreboard players set @e[tag=flicker-lamp] flickerTime 69
execute if score game_time globals matches 800..960 run scoreboard players set @e[tag=flicker-lamp] flickerTime -69
execute as @a at @s if score game_time globals matches 800 run playsound arc86.electrical_fail voice @s ~ ~ ~
# execute as @a at @s if score game_time globals matches 945 run playsound arc86.alarm ambient @s ~ ~ ~ 0.4
execute as @a if score game_time globals matches 950 run function arc86:credits/start
execute as @a at @s if score game_time globals matches 1580 run function arc86:escape/start
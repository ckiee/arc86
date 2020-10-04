execute unless score old_stage globals = stage globals run function arc86:timings/stage_change
execute store result score old_stage globals run scoreboard players get stage globals

execute if score stage globals matches 5 run function arc86:timings/ticks/s5
execute if score stage globals matches 10 run function arc86:timings/ticks/s10
execute if score stage globals matches 17 run function arc86:timings/ticks/s17
execute if score stage globals matches 20 run function arc86:timings/ticks/s20
execute if score stage globals matches 30 run function arc86:timings/ticks/s30
execute if score stage globals matches 40 run function arc86:timings/ticks/s40
execute if score stage globals matches 50 run function arc86:timings/ticks/s50
execute if score stage globals matches 60 run function arc86:timings/ticks/s60
execute if score stage globals matches 70 run function arc86:timings/ticks/s70
execute if score stage globals matches 80 run function arc86:timings/ticks/s80

execute if score stage globals matches 10..30 run function arc86:timings/ticks/april_loop

scoreboard players add stage_time globals 1

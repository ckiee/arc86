execute unless score old_stage globals = stage globals run function arc86:timings/stage_change
execute store result score old_stage globals run scoreboard players get stage globals

execute if score stage globals matches 5 run function arc86:timings/ticks/s5
execute if score stage globals matches 10 run function arc86:timings/ticks/s10
execute if score stage globals matches 17 run function arc86:timings/ticks/s17
execute if score stage globals matches 20 run function arc86:timings/ticks/s20
execute if score stage globals matches 30 run function arc86:timings/ticks/s30
execute if score stage globals matches 40 run function arc86:timings/ticks/s40

scoreboard players add stage_time globals 1

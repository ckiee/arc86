execute if score stage globals matches 1 run function arc86:timings/s1tick
execute if score stage globals matches 2 run function arc86:timings/s2tick

##
scoreboard players add stage_time globals 1

execute store result score old_stage globals run scoreboard players get stage globals

execute positioned -95 150 -73 if entity @a[distance=..3] if score stage globals matches 0 run function arc86:timings/s1
execute positioned -106 150 -53 if entity @a[distance=..3] if score stage globals matches 1 run function arc86:timings/s2

execute unless score old_stage globals = stage globals run function arc86:timings/stage_change

# to ensure it works even if they go past it
execute positioned -95 150 -73 if entity @a[distance=..3] run scoreboard players set $passed s17 1
execute if score $passed s17 matches 1 if score stage_time globals matches 900.. run function arc86:timings/s20

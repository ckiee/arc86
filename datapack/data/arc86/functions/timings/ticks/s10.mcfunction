execute positioned -48 150 -72 if entity @a[distance=..3] run function arc86:timings/s17

bossbar set arc86:s10-goal players @a
execute if score stage_time globals matches 1150 run function arc86:timings/s10-goal
execute if score stage_time globals matches 1150.. unless data entity @e[tag=steven-med,limit=1] Item run bossbar set arc86:s10-goal visible false
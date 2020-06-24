execute if score stage_time globals matches 95 run scoreboard players set $state flickerTime 0
execute if score stage_time globals matches 195 run function arc86:introatrium/disintergrate
execute if score stage_time globals matches 195 positioned -99 156 -38 at @a[distance=..15] run particle explosion_emitter
execute if score stage_time globals matches 240 run function arc86:timings/s3

# execute if score stage_time globals matches 600 run function arc86:escape/start
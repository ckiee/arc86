execute if score stage_time globals matches 95 run scoreboard players set $state flickerTime 0
execute if score stage_time globals matches 195 run function arc86:introatrium/disintergrate
execute if score stage_time globals matches 175..239 as @a at @s run function arc86:trainshake/genshake
execute if score stage_time globals matches 220..239 positioned -99 156 -38 as @a[distance=..25,sort=random] at @s run particle explosion_emitter
execute if score stage_time globals matches 240 run function arc86:timings/s40

# execute if score stage_time globals matches 600 run function arc86:escape/start

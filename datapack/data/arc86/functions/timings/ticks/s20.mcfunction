say s20
execute if score stage_time globals matches 40 run scoreboard players set $state flickerTime 0
execute if score stage_time globals matches 450 run scoreboard players set $state flickerTime 1
execute positioned -106 150 -53 if entity @a[distance=..3] if score stage_time globals matches 450.. run function arc86:timings/s30

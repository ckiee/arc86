execute unless block ~ ~ ~ #arc86:shoot_through run scoreboard players set $hit gunRaycast 1
execute if score $hit gunRaycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!ray,dx=0,sort=nearest] if score $hit gunRaycast matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function arc86:rifle/hit
scoreboard players add $distance gunRaycast 1
execute if score $hit gunRaycast matches 0 if score $distance gunRaycast <= $max gunRaycast positioned ^ ^-0.005 ^0.1 run function arc86:rifle/ray

#execute if score $hit gunRaycast matches 0 if score $distance gunRaycast matches 300..500 positioned ^ ^ ^0.1 rotated 0 90 run function arc86:rifle/ray

execute unless entity @a[distance=..2] run particle dust 1 1 1 1
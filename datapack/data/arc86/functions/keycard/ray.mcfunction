execute unless block ~ ~ ~ air run scoreboard players set $hit raycast 1
execute if block ~ ~ ~ blue_ice run function arc86:keycard/hit
# execute if score $hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!ray,dx=0,sort=nearest] if score $hit raycast matches 0 positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] run function hit_entity
scoreboard players add $distance raycast 1
execute if score $hit raycast matches 0 if score $distance raycast matches ..50 positioned ^ ^ ^0.1 run function arc86:keycard/ray
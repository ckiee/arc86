execute unless block ~ ~ ~ air run scoreboard players set $hit raycast 1
execute if score $hit raycast matches 0 if entity @e[tag=keycard-reader,distance=..1] run function arc86:keycard/hit
execute if entity @e[tag=!ray,distance=..1] run scoreboard players set $hit raycast 1

scoreboard players add $distance raycast 1
execute if score $hit raycast matches 0 if score $distance raycast matches ..50 positioned ^ ^ ^0.1 run function arc86:keycard/ray
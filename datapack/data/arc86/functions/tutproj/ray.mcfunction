execute if score $distance raycast matches 5.. unless block ~ ~ ~ air run scoreboard players set $hit raycast 1
particle minecraft:dust 0 0.9 0 1 ~ ~ ~ 0 0 0 0 1 normal

scoreboard players add $distance raycast 1
execute if score $hit raycast matches 0 if score $distance raycast matches ..50 positioned ^ ^ ^0.2 run function arc86:tutproj/ray

execute unless block ~ ~ ~ #arc86:tuthelper_ray_through run scoreboard players set $hit raycast 1

execute if score $hit raycast matches 0 if entity @e[tag=s2-vote-easy,distance=..1] run function arc86:tuthelper/hit_easy
execute if score $hit raycast matches 0 if entity @e[tag=s2-vote-hard,distance=..1] run function arc86:tuthelper/hit_hard

scoreboard players add $distance raycast 1
execute if score $hit raycast matches 0 if score $distance raycast matches ..100 positioned ^ ^ ^0.1 run function arc86:tuthelper/ray

scoreboard players operation $reg s80 = stage_time globals
scoreboard players operation $reg s80 %= $mod s80
execute if score $reg s80 matches 0..5 run particle minecraft:falling_water -250 81.05 -139.04 0.3 0 0.1 1 6 normal

execute if block -233 74 -163 minecraft:lever[powered=true] run function arc86:timings/s82

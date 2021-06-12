execute if entity @a[x=-244,y=73,z=-154,dx=5] run function arc86:timings/s85
execute if entity @a[x=-237,y=74,z=-201,distance=..5] run function arc86:timings/s85

scoreboard players operation $reg s80 = stage_time globals
scoreboard players operation $reg s80 %= $mod s80
execute if score $reg s80 matches 0..5 run particle minecraft:falling_water -250 81.05 -139.04 0.3 0 0.1 1 6 normal

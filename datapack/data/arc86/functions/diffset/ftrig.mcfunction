data merge entity @s {ItemRotation: 0b}
execute as @e[tag=diffset] run function arc86:diffset/swap_map
# invert diff by *-1 mul
scoreboard players operation $diff diffset *= $-1 diffset 
execute if score $diff diffset matches 1 run function arc86:diffset/set_hard
execute if score $diff diffset matches -1 run function arc86:diffset/set_easy

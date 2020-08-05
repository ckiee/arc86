execute as @e[tag=diffset] store result score @s diffset run data get entity @s ItemRotation
execute as @e[tag=diffset] unless score @s diffset matches 2 run function arc86:diffset/ftrig 
# unsafe!! diffset score is now different due to swap_map call
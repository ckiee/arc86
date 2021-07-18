###
# This has been replaced by tuthelper. You can no longer diffset with itemframes (but it'll probably still work if you uncomment this, .:set_easy and .:set_hard are still used)
###
# execute as @e[tag=diffset] store result score @s diffset run data get entity @s ItemRotation
# execute as @e[tag=diffset] unless score @s diffset matches 0 run function arc86:diffset/ftrig
# unsafe!! diffset score is now different due to swap_map call

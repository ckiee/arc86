execute store result score $rightarm0 oldman run data get entity @e[tag=oldman,limit=1] Pose.RightArm[0]
scoreboard players add $rightarm0 oldman 9
execute store result entity @e[tag=oldman,limit=1] Pose.RightArm[0] float 1 run scoreboard players get $rightarm0 oldman
# execute as @e[tag=oldman] at @s if predicate arc86:flicker_rng run tp @s ~ ~ ~1
# execute as @e[tag=oldman] at @s if predicate arc86:flicker_rng run tp @s ~ ~ ~-1

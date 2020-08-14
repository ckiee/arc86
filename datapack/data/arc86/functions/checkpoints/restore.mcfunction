summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["checkpoints-tmp"]}
execute store result entity @e[tag=checkpoints-tmp,limit=1] Pos[0] double 0.01 run scoreboard players get @s checkpointsX
execute store result entity @e[tag=checkpoints-tmp,limit=1] Pos[1] double 0.01 run scoreboard players get @s checkpointsY
execute store result entity @e[tag=checkpoints-tmp,limit=1] Pos[2] double 0.01 run scoreboard players get @s checkpointsZ
execute store result entity @e[tag=checkpoints-tmp,limit=1] Rotation[0] float 0.01 run scoreboard players get @s checkpointsRotH
execute store result entity @e[tag=checkpoints-tmp,limit=1] Rotation[0] float 0.01 run scoreboard players get @s checkpointsRotV

execute at @e[tag=checkpoints-tmp] rotated as @e[tag=checkpoints-tmp] run tp @s ~ ~ ~ ~ ~
kill @e[tag=checkpoints-tmp]
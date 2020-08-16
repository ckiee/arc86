setblock ~ ~ ~ air
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["checkpoint"]}
execute store result score @s checkpointID run data get entity @s UUID[0]

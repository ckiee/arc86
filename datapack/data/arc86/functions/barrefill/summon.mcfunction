summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["barrefill"]}
scoreboard players set @e[tag=barrefill,limit=1,sort=nearest,distance=..1] barrefillMax 20

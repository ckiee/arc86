# No loops ):
summon minecraft:area_effect_cloud 0 0 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["flicker-rng", "flicker-rng-0"]}
execute store result score flicker_rng_count globals run execute if entity @e[tag=flicker-rng]
execute if score flicker_rng_count globals matches ..20 run function arc81:flicker/loadloop
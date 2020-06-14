scoreboard objectives remove flickerTime
scoreboard objectives add flickerTime dummy

kill @e[tag=flicker-rng]
function arc86:flicker/loadloop
summon minecraft:area_effect_cloud 0 0 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["flicker-rng", "flicker-rng-1"]}
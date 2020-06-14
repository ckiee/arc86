# Credits

execute as @a[tag=in-credits] run function arc86:credits/stop

kill @e[tag=credits-lock]
summon minecraft:area_effect_cloud 0 -10 0 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["credits-lock"]}
tp @e[tag=credits-lock,limit=1] 0 -10 0 0 90

scoreboard objectives remove creditTime
scoreboard objectives add creditTime dummy
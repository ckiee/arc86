function arc86:introatrium/load
fill -100 159 -34 -111 154 -41 minecraft:command_block{auto: 1b, Command: "function arc86:introatrium/summon_point"}
setblock -117 149 -55 air
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["introatrium-prep"]}
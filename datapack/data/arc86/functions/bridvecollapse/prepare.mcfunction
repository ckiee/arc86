function arc86:bridvecollapse/load
fill -222 154 -9 -228 156 7 minecraft:command_block{auto: 1b, Command: "function arc86:bridvecollapse/summon_point"}
setblock -117 149 -55 air
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["bridve-prep"]}

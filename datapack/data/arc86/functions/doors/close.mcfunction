# kill @e[tag=door-opener,tag=door-closer]
setblock ~ ~-1 ~ black_concrete
setblock ~ ~4 ~ air
fill ~ ~6 ~ ~ ~10 ~ minecraft:command_block{auto: 1b, Command: "function arc86:doors/spawn_closer"}
# kill @e[tag=door-opener,tag=door-closer]
setblock ~ ~-1 ~ light_gray_concrete
setblock ~ ~4 ~ air
fill ~ ~6 ~ ~ ~10 ~ minecraft:command_block{auto: 1b, Command: "function arc86:doors/spawn_closer"}
scoreboard players set @s doorState 1
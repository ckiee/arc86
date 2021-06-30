# kill @e[tag=door-opener,tag=door-closer]
setblock ~ ~-1 ~ air
fill ~ ~ ~ ~ ~5 ~ air
fill ~ ~-2 ~ ~ ~-6 ~ minecraft:command_block{auto: 1b, Command: "function arc86:doors/spawn_opener"}
scoreboard players set @s doorLife 0
scoreboard players set @s doorState 2
forceload add ~ ~

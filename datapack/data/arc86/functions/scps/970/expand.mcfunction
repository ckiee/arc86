setblock ~ ~ ~ structure_block{mirror: "NONE", powered: 0b, z: -196, x: -61, seed: 0L, integrity: 1.0f, sizeY: 7, posZ: -15, sizeZ: 15, showboundingbox: 0b, showair: 0b, posY: 1, posX: -7, name: "arc86:scps/970", rotation: "NONE", mode: "LOAD", id: "minecraft:structure_block", y: 35, sizeX: 7, author: "ronthecookie", metadata: "", ignoreEntities: 1b}
execute if score @s scp970 matches 30 run setblock ~ ~ ~ structure_block{mirror: "NONE", powered: 0b, z: -196, x: -61, seed: 0L, integrity: 1.0f, sizeY: 7, posZ: -15, sizeZ: 15, showboundingbox: 0b, showair: 0b, posY: 1, posX: -7, name: "arc86:scps/970/barrel", rotation: "NONE", mode: "LOAD", id: "minecraft:structure_block", y: 35, sizeX: 7, author: "ronthecookie", metadata: "", ignoreEntities: 0b}
setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ red_concrete
tp ~ ~ ~-12
scoreboard players add @s scp970 1

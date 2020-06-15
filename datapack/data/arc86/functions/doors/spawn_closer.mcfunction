setblock ~ ~ ~ air
execute align xyz run summon falling_block ~.5 ~ ~.5 {NoGravity: 0b, BlockState: {Name: "minecraft:smooth_stone"}, Time: -2147483648, DropItem: 0, Tags: ["door-closer"]}
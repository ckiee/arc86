execute store result score $scoped thermal run data get entity @s Inventory[{Slot: 103b, tag: {ThermalWear: 1b}}]
execute if score $scoped thermal matches 1.. run function arc86:thermal/scopedtick
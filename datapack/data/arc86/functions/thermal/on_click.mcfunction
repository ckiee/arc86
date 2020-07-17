# order matters
execute unless score @s thermal matches -100000.. run scoreboard players set @s thermal 0
execute store result score $scoped thermal run data get entity @s Inventory[{Slot: 103b, tag: {ThermalWear: 1b}}]
execute if score $scoped thermal matches 0 if score @s thermal matches 0 run function arc86:thermal/on_false
execute if score $scoped thermal matches 1.. run function arc86:thermal/on_true
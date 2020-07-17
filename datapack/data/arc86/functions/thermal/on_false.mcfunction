# its off so we toggle it on
replaceitem entity @s armor.head carved_pumpkin{display: {Name: '{"text":"Scope","color":"gold"}'}, HideFlags: 1, Enchantments: [{id: "minecraft:binding_curse", lvl: 1s}, {id: "minecraft:vanishing_curse", lvl: 1s}], ThermalWear: 1b}
scoreboard players set @s thermal -60

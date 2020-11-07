kill @e[distance=..15,type=item,nbt={Item: {id: "minecraft:iron_door"}}]
execute if score @s airlock matches 10 run function arc86:airlock/lock_neg_door
execute if score @s airlock matches 20 run playsound arc86:dev.sectionfail master @a[distance=..15]
execute if score @s airlock matches 20..50 run function arc86:airlock/smoke_tick
execute if score @s airlock matches 60 run function arc86:airlock/open_neg_door
# stone button is only 10 ticks (60) but i dont want that
execute if score @s airlock matches 90 run function arc86:airlock/close_neg_door

execute if score @s airlock matches 95 run tag @s remove airlock-powered
execute if score @s airlock matches 95 run scoreboard players reset @s airlock

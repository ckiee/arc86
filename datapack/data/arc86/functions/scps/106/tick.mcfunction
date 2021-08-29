# wandering traders like to drink potions. we don't like that.
data merge entity @e[type=wandering_trader,tag=106-pather,limit=1] {HandItems:[],Inventory:[]}

execute if score $anim scp106 matches 0.. as @e[tag=106-pather] at @s run function arc86:scps/106/anim_tick
execute if score $targeting scp106 matches 0 as @e[tag=106-pather] at @s run function arc86:scps/106/find_target
execute if score $targeting scp106 matches 1 as @e[tag=106-pather] at @s run function arc86:scps/106/target_tick

execute as @e[tag=106-model,limit=1,type=armor_stand] at @s run function arc86:scps/106/leg_anim

tp @e[tag=106-model,limit=1,type=armor_stand] @e[tag=106-pather,limit=1,type=wandering_trader]

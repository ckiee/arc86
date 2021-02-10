execute unless entity @a[distance=..3] if score @s airlock matches ..2 run scoreboard players set @s airlock 0
execute if score @s airlock matches 20 as @e[tag=airlock-start-button,limit=1,sort=nearest] at @s run function arc86:airlock/set_torch_off
execute if score @s airlock matches 25 run playsound arc86:airlock block @a[distance=..15] ~ ~ ~ 1 1 0.2
# smoke ! 
execute if score @s airlock matches 30..160 run function arc86:airlock/protest
execute if score @s airlock matches 200 as @e[tag=airlock-button,tag=!airlock-start-button,limit=1,sort=nearest] at @s run function arc86:airlock/set_torch_on
execute if entity @a[distance=..7] if score @s airlock matches 200.. run scoreboard players set @s airlock 200
execute if score @s airlock matches 250 as @e[tag=airlock-button,tag=!airlock-start-button,limit=1,sort=nearest] at @s run function arc86:airlock/set_torch_off
# reset
execute if score @s airlock matches 250 run tag @e[tag=airlock-start-button,limit=1,sort=nearest] remove airlock-start-button
# NOTHING after this
execute if score @s airlock matches 250 run scoreboard players reset @s airlock

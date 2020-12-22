execute unless entity @a[distance=..3] if score @s airlock matches ..2 run scoreboard players set @s airlock 0
execute if score @s airlock matches 20 as @e[tag=airlock-start-button,limit=1,sort=nearest] at @s run function arc86:airlock/set_torch_off
execute if score @s airlock matches 25 run playsound arc86:dev.sectionfail master @a[distance=..15] ~ ~ ~ 1 1 0.2
# smoke ! 
execute if score @s airlock matches 30..60 run function arc86:airlock/protest
execute if score @s airlock matches 100 as @e[tag=airlock-button,tag=!airlock-start-button,limit=1,sort=nearest] at @s run function arc86:airlock/set_torch_on
execute if entity @a[distance=..7] if score @s airlock matches 100.. run scoreboard players set @s airlock 100
execute if score @s airlock matches 150 as @e[tag=airlock-button,tag=!airlock-start-button,limit=1,sort=nearest] at @s run function arc86:airlock/set_torch_off
# reset
execute if score @s airlock matches 150 run tag @e[tag=airlock-start-button,limit=1,sort=nearest] remove airlock-start-button
# NOTHING after this
execute if score @s airlock matches 150 run scoreboard players reset @s airlock

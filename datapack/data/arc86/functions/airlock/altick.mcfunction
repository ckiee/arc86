tag @s add current-airlock
execute if entity @a[distance=..20,gamemode=!spectator] run function arc86:airlock/summon_buttons
execute as @e[tag=airlock-button,distance=..10] at @s run function arc86:airlock/albtick


#execute if entity @e[tag=airlock-button,distance=..10] unless entity @a[distance=..20,gamemode=!spectator] run 
kill @e[tag=airlock-button,distance=..10]
tag @s remove current-airlock
spectate @e[tag=credits-lock,limit=1]
scoreboard players add @s creditTime 1
stopsound @s

execute if score @s creditTime matches 95.. run function arc86:credits/stop
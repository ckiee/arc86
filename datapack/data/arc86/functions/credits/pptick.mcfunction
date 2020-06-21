spectate @e[tag=credits-lock,limit=1]
scoreboard players add @s creditTime 1

execute if score @s creditTime matches 125.. run function arc86:credits/stop
execute if score @s creditTime matches ..70 run title @s actionbar ["",{"text":"A ","color":"gray"},{"text":"_Star_Phoenix_","color":"gold"},{"text":" and ","color":"gray"},{"text":"ronthecookie","color":"gold"},{"text":" production","color":"gray"}]

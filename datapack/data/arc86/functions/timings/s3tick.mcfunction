execute as @a run spectate @e[tag=credits-lock,limit=1]
execute if score stage_time globals matches ..70 run title @s actionbar ["",{"text":"A ","color":"gray"},{"text":"_Star_Phoenix_","color":"gold"},{"text":" and ","color":"gray"},{"text":"ronthecookie","color":"gold"},{"text":" production","color":"gray"}]
execute if score stage_time globals matches 300 run function arc86:timings/s3over

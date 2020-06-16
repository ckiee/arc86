scoreboard objectives remove gameStart
scoreboard objectives remove leave
scoreboard objectives remove lobbyCycle
scoreboard objectives add gameStart trigger
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add lobbyCycle dummy
scoreboard players set $ lobbyCycle 80
scoreboard players set $INVERT lobbyCycle -1
execute if score game_started globals matches 0 run tellraw @a ["",{"score":{"name":"player_count","objective":"globals"},"color":"red"},{"text":" players online ","color":"gold"},{"text":"[Start Game]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger gameStart set 1"}}]
execute unless score game_started globals matches 0 run tellraw @a ["",{"score":{"name":"player_count","objective":"globals"},"color":"red"},{"text":" players online ","color":"gold"},{"text":"[Start Game]","bold":true,"color":"gray"}]
gamemode spectator
spectate @e[tag=lobby-cam,limit=1]
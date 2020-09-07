tellraw @s [{"color":"aqua","text":"Welcome to “Falling from Grace: The Fall of ARC Site-86”—and thank you for downloading our map! We’re incredibly grateful you’ve taken the time out of your day to give our project a go—and we’re certain you won’t be disappointed! ","bold":false}]
tellraw @s [{"color":"gold","text":"First things first, however, you’ll need to be acquainted with the basics of gameplay. If you have the resource pack applied, you should see a keycard in your inventory right about now. Turn around, and right click the reader to open the door; your tutorial starts there. Good luck, and have fun!","bold":false}]
# tellraw @a ["",{"score":{"name":"player_count","objective":"globals"},"color":"red"},{"text":" players online ","color":"gold"},{"text":"[Start Game]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger gameStart set 1"}}]
gamerule sendCommandFeedback false
gamemode adventure
gamerule sendCommandFeedback true
tp @s -109 152.19 31 180 0
clear
function arc86:keycard/give_l1
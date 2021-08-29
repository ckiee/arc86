# This used to set the movement_speed attr but now it's just NoAI
execute if score $pathfind scp106 matches 0 run data modify entity @s NoAI set value 1
execute if score $pathfind scp106 matches 1 run data modify entity @s NoAI set value 0

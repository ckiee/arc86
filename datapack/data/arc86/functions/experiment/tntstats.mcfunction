execute store result score $z tntstats run data get entity @s Pos[2] 
scoreboard players operation $z tntstats -= $base tntstats
execute if score $z tntstats matches ..0 unless score $z tntstats matches 0 run scoreboard players operation $z tntstats *= $invert tntstats

execute if score $z tntstats > $max tntstats run scoreboard players operation $max tntstats = $z tntstats
title @a actionbar [{"score":{"name":"$max","objective":"tntstats"},"color":"red"},{"text":" blocks", "color":"red"}]
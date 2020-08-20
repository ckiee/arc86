execute if block ~ ~ ~ #arc86:scp_729[waterlogged=true] run scoreboard players add @s scp729Timer 1
execute unless block ~ ~ ~ #arc86:scp_729[waterlogged=true] run scoreboard players reset @s scp729Timer

execute if block ~ ~ ~ #arc86:scp_729[waterlogged=true] run effect give @s minecraft:nausea 5
execute if block ~ ~ ~ #arc86:scp_729[waterlogged=true] run effect give @s minecraft:blindness 5

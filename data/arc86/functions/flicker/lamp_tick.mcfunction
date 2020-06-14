execute unless score @s flickerTime matches -10000.. run scoreboard players set @s flickerTime 0
tag @s add this
execute if predicate arc86:flicker_rng run scoreboard players add @e[tag=this] flickerTime 5
tag @s remove this

execute if score @s flickerTime matches 1.. run setblock ~ ~ ~ redstone_lamp[lit=true]
execute if score @s flickerTime matches ..1 run setblock ~ ~ ~ redstone_lamp[lit=false]

execute unless score @s flickerTime matches ..0 run scoreboard players remove @s flickerTime 1
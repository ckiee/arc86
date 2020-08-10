execute unless score @s teslagateTimer matches 1.. run function arc86:teslagate/tgontick
execute if score @s teslagateTimer matches 1.. run scoreboard players remove @s teslagateTimer 1

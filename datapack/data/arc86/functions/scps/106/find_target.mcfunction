# big font for yolm!
tag @a[tag=106-target] remove 106-target
tag @a[scores={voicelogTime=-1},limit=1,sort=random] add 106-target

tellraw @a ["",{"text":"[scp106] ","color":"gold"},{"text":"picked target ","color":"red"},{"selector":"@a[tag=106-target,limit=1]","color":"gold"}]
execute if entity @a[tag=106-target] run function arc86:scps/106/start_targeting

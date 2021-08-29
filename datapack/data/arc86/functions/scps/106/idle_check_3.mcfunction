# get
function arc86:poser/collect
scoreboard players operation New[0] scp106 = Pos[0] poser
scoreboard players operation New[1] scp106 = Pos[1] poser
scoreboard players operation New[2] scp106 = Pos[2] poser
# sub
scoreboard players operation New[0] scp106 -= Orig[0] scp106
scoreboard players operation New[1] scp106 -= Orig[1] scp106
scoreboard players operation New[2] scp106 -= Orig[2] scp106
# abs
execute if score New[0] scp106 matches ..0 run scoreboard players operation New[0] scp106 *= -1 scp106
execute if score New[1] scp106 matches ..0 run scoreboard players operation New[1] scp106 *= -1 scp106
execute if score New[2] scp106 matches ..0 run scoreboard players operation New[2] scp106 *= -1 scp106
# sum/add
scoreboard players operation $distance scp106 = New[0] scp106
scoreboard players operation $distance scp106 += New[1] scp106
scoreboard players operation $distance scp106 += New[2] scp106
# divide by poser FP scale (10^5)
scoreboard players operation $distance scp106 /= 10^5 scp106
# debug
tellraw @a ["",{"text":"[scp106] ","color":"gold"},{"text":"idlecheckv2 $dist=","color":"red"},{"score":{"name":"$distance","objective":"scp106"},"color":"gold"}]
# under 15 blocks and we're still targeting? sink animation
execute if score $distance scp106 matches ..15 if score $pathfind scp106 matches 1 run function arc86:scps/106/start_sink_anim
# do it again
function arc86:scps/106/idle_check

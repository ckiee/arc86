tag @e[tag=rockfall-current-playing,limit=1] remove rockfall-current-playing
execute as @e[tag=rockfall-frame] if score @s rockfall = $pos rockfall run tag @s add rockfall-current-playing

data modify entity @e[tag=rockfall-player,limit=1] Pos set from entity @e[tag=rockfall-current-playing,limit=1] Pos
data modify entity @e[tag=rockfall-player,limit=1] Rotation set from entity @e[tag=rockfall-current-playing,limit=1] Rotation
data modify entity @e[tag=rockfall-player,limit=1] Pose set from entity @e[tag=rockfall-current-playing,limit=1] Pose

scoreboard players add $pos rockfall 1

execute unless score $pos rockfall > $max rockfall run schedule function arc86:rockfall/play_pos 1t

execute store result score @s checkpointsX run data get entity @s Pos[0] 100
execute store result score @s checkpointsY run data get entity @s Pos[1] 100
execute store result score @s checkpointsZ run data get entity @s Pos[2] 100
execute store result score @s checkpointsRotH run data get entity @s Rotation[0] 100
execute store result score @s checkpointsRotV run data get entity @s Rotation[1] 100
# just so it feels a bit smoother as it takes a bit to tp
spawnpoint @s ~ ~ ~

scoreboard players operation @s checkpointID = @e[tag=checkpoint,distance=..5,limit=1,sort=nearest] checkpointID
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.5
title @s reset
title @s title [""]
title @s subtitle [{"color": "aqua", "text": "Checkpoint Saved"}]

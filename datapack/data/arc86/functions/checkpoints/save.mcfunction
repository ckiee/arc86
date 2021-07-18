execute store result score @s checkpointsX run data get entity @s Pos[0] 100
execute store result score @s checkpointsY run data get entity @s Pos[1] 100
execute store result score @s checkpointsZ run data get entity @s Pos[2] 100
execute store result score @s checkpointsRotH run data get entity @s Rotation[0] 100
execute store result score @s checkpointsRotV run data get entity @s Rotation[1] 100
# just so it feels a bit smoother as it takes a bit to tp
spawnpoint @s ~ ~ ~

tag @e[tag=checkpoint,distance=..5,limit=1,sort=nearest] add self
scoreboard players operation @s checkpointID = @e[tag=checkpoint,distance=..5,limit=1,sort=nearest] checkpointID
execute if entity @e[tag=self,tag=!checkpoint-silent] run function arc86:checkpoints/save_alert

tag @e[tag=checkpoint,distance=..5,limit=1,sort=nearest] remove self

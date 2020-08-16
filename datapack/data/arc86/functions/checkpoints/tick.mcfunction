execute as @e[tag=checkpoint] at @s as @a[distance=..5] at @s unless score @s checkpointID = @e[tag=checkpoint,distance=..5,limit=1] checkpointID run function arc86:checkpoints/save

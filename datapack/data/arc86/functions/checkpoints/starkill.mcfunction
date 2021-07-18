execute as @e[tag=checkpoint,distance=..5,limit=1,sort=nearest] at @s run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 50
kill @e[tag=checkpoint,distance=..5,limit=1,sort=nearest]
setblock ~ ~ ~ air

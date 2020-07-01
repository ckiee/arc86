scoreboard players remove @a[scores={gunCooldown=1..}] gunCooldown 1
execute as @a unless score @s gunCooldown matches 0.. run scoreboard players set @s gunCooldown 0

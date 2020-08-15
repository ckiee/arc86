tag @s remove respawn
# to check if it exists, wont pass if it doesnt exist (thanks mojang)
execute if score @s checkpointsX = @s checkpointsX run function arc86:checkpoints/restore

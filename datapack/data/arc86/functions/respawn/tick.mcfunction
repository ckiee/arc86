execute as @a[scores={health=1..},tag=respawn] run function arc86:respawn/on_respawn
execute as @a[scores={health=0},tag=!respawn] run tag @s add respawn

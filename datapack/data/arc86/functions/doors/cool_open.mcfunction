scoreboard players set $opened doorCloseTimer 0
execute if score @s doorCloseTimer matches -1 run function arc86:doors/safe_open
execute if score @s doorCloseTimer matches -1 run scoreboard players set $opened doorCloseTimer 1
execute if score @s doorCloseTimer matches -1 run scoreboard players set @s doorCloseTimer 200

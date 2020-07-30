execute store result score @s doorOpenerKilled positioned ~ ~8 ~ run kill @e[tag=door-opener,distance=..1]
execute if score @s doorOpenerKilled matches 1 run function arc86:doors/opened_event
execute if score @s doorLife matches 7 run setblock ~ ~-1 ~ light_gray_concrete

scoreboard players add @s doorLife 1
scoreboard players reset @s doorOpenerKilled

# Door cooldown close:

# if they have no score yet
execute unless score @s doorCloseTimer matches -1.. run scoreboard players set @s doorCloseTimer -1

execute if score @s doorCloseTimer matches 0 run function arc86:doors/safe_close
execute if score @s doorCloseTimer matches 0 run scoreboard players set @s doorCloseTimer -1

execute if score @s doorCloseTimer matches 1.. run scoreboard players remove @s doorCloseTimer 1

# incase they get themselves stuck under
execute positioned ~ ~-2 ~ run tp @a[distance=..1] ~ ~2 ~
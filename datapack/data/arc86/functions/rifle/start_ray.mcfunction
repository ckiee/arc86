execute at @s anchored feet if entity @e[tag=last-hit] run tp @s ~ ~ ~ facing entity @e[tag=last-hit,limit=1]
scoreboard players operation @s gunCooldown = $cool gunCooldown
tag @s add ray
scoreboard players set $hit gunRaycast 0
scoreboard players set $distance gunRaycast 0
execute anchored eyes positioned ^ ^ ^ anchored feet run function arc86:rifle/ray
tag @s remove ray
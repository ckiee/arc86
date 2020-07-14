scoreboard players set @s gunCooldown 2
tag @s add ray
scoreboard players set $hit gunRaycast 0
scoreboard players set $distance gunRaycast 0
function arc86:rifle/ray
tag @s remove ray
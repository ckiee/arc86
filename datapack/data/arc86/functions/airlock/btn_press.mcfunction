# @s IS NOT PERSISTENT
scoreboard players set @e[tag=current-airlock] airlock 0
tag @s add airlock-start-button
function arc86:airlock/set_torch_on

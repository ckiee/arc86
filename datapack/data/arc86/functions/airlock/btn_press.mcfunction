# @s IS NOT PERSISTENT
say btn press
scoreboard players set @e[tag=current-airlock] airlock 0
tag @s add airlock-start-button
function arc86:airlock/set_torch_on

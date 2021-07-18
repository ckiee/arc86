scoreboard players set $hit raycast 1
scoreboard players set $a tuthelper 905009
scoreboard players set $b tuthelper 905010
execute if score $hard tuthelper matches 0 run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.5
scoreboard players set $hard tuthelper 1
function arc86:tuthelper/set_model_data
function arc86:diffset/set_hard

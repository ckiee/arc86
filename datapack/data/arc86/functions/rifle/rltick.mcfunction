execute store result score @s gunAmmo run data get entity @s SelectedItem.tag.ammo
execute if score @s gunAmmo matches ..-1 run scoreboard players operation @s gunAmmo += $DEC gunAmmo
# need to check if it matches to avoid repalceitem making dumb sound
execute if score @s gunAmmo matches ..-1 run function arc86:rifle/update_item
# load into the sb
execute store result score @s gunAmmo run data get entity @s SelectedItem.tag.ammo
# reload
execute if score @s gunAmmo matches 0 run execute store result score $RL gunAmmo run clear @s netherite_ingot 1
execute if score @s gunAmmo matches 0 if score $RL gunAmmo matches 1 run scoreboard players operation @s gunAmmo += $DEC gunAmmo

execute if score @s gunAmmo matches 1.. run function arc86:guns/fire
execute if score @s gunAmmo matches 0 run function arc86:guns/empty
# normal ammo dec from firing
execute if score @s gunAmmo matches 1.. run scoreboard players operation @s gunAmmo += $DEC gunAmmo
# store from sb
function arc86:guns/update_item

execute if score @s gunAmmo matches -1 run function arc86:guns/reload

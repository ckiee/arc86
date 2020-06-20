execute store result score $has keycard run data get entity @s SelectedItem.tag.KeycardLevel
scoreboard players set $required keycard 2
execute if score $has keycard >= $required keycard run execute as @e[tag=door,sort=nearest,distance=..7] at @s run function arc86:doors/cool_open
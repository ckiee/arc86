scoreboard players set $hit raycast 1
execute store result score $has keycard run data get entity @s SelectedItem.tag.KeycardLevel
execute store result score $required keycard run data get entity @e[type=area_effect_cloud,limit=1,distance=..2,tag=keycard-reader] Color
execute if score $has keycard >= $required keycard run execute as @e[tag=door,sort=nearest,distance=..7] at @s run function arc86:doors/cool_open
execute if score $has keycard < $required keycard run playsound entity.villager.no player @s ~ ~ ~
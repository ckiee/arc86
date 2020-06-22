scoreboard players set $hit raycast 1
execute store result score $has keycard run data get entity @s SelectedItem.tag.KeycardLevel
execute store result score $required keycard run data get entity @e[type=area_effect_cloud,limit=1,distance=..1,tag=keycard-reader] Color
execute if score $has keycard >= $required keycard run function arc86:keycard/granted
execute if score $has keycard < $required keycard run function arc86:keycard/denied
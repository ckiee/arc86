scoreboard players set $hit raycast 1
scoreboard players set $check_eq keycard 0
execute store result score $required keycard run data get entity @e[limit=1,distance=..1,tag=keycard-reader] Color
execute store result score $has keycard run data get entity @s SelectedItem.tag.KeycardLevel
execute store result score $has_exception keycard run data get entity @s SelectedItem.tag.KeycardExceptionId

# begin exceptions
execute if score $required keycard > $EXCEPTION_OFFSET keycard run scoreboard players set $check_eq keycard 1
execute if score $required keycard > $EXCEPTION_OFFSET keycard run scoreboard players operation $has keycard = $has_exception keycard
execute if score $required keycard > $EXCEPTION_OFFSET keycard run scoreboard players operation $required keycard -= $EXCEPTION_OFFSET keycard
# end exceptions

execute if score $check_eq keycard matches 0 if score $has keycard >= $required keycard at @e[limit=1,distance=..1,tag=keycard-reader] run function arc86:keycard/granted
execute if score $check_eq keycard matches 0 if score $has keycard < $required keycard run function arc86:keycard/denied

execute if score $check_eq keycard matches 1 if score $has keycard = $required keycard at @e[limit=1,distance=..1,tag=keycard-reader] run function arc86:keycard/granted
execute if score $check_eq keycard matches 1 unless score $has keycard = $required keycard run function arc86:keycard/denied

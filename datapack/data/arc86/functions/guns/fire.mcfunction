execute if score @s gunCooldown matches 0 at @s run function arc86:guns/start_ray
execute if data entity @s SelectedItem.tag.rifle run playsound arc86:guns.rifle.fire player @a ~ ~ ~ 0.9 1 0.1
execute if data entity @s SelectedItem.tag.pistol run playsound arc86:guns.pistol.fire player @a ~ ~ ~ 0.9 1 0.1
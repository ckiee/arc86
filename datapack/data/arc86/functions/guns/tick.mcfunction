scoreboard players remove @a[scores={gunCooldown=1..}] gunCooldown 1
execute as @a unless score @s gunCooldown matches 0.. run scoreboard players set @s gunCooldown 0
execute as @a[nbt={SelectedItem: {tag: {gun: 1b}}}] if data entity @s SelectedItem.tag.ammo run function arc86:guns/rltick

scoreboard players set @s coac 0
# execute if entity @s[nbt={SelectedItem: {tag: {display: {Name: '{"text":"Oh-bese"}'}}}}] at @s run function arc86:keycard/item_frame_finder
execute if data entity @s SelectedItem.tag.KeycardLevel at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:keycard/start_ray
execute if data entity @s SelectedItem.tag.rifle at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:rifle/fire

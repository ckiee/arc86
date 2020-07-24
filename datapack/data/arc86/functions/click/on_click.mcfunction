scoreboard players reset @s coas
# execute if entity @s[nbt={SelectedItem: {tag: {display: {Name: '{"text":"Oh-bese"}'}}}}] at @s run function arc86:keycard/item_frame_finder
execute if data entity @s SelectedItem.tag.KeycardLevel at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:keycard/start_ray
execute if data entity @s SelectedItem.tag.rifle at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:rifle/maybe_fire
execute if data entity @s SelectedItem.tag.thermal at @s run function arc86:thermal/on_click
execute if data entity @s SelectedItem.tag.stageSkip at @s run function arc86:timings/stage_skipper
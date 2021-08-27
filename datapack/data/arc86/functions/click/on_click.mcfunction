scoreboard players reset @s coas
data modify storage arc86:click SelectedItemCache set from entity @s SelectedItem
execute if data storage arc86:click SelectedItemCache.tag.KeycardLevel at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:keycard/start_ray
execute if data storage arc86:click SelectedItemCache.tag.gun at @s run function arc86:guns/maybe_fire
execute if data storage arc86:click SelectedItemCache.tag.thermal at @s run function arc86:thermal/on_click
execute if data storage arc86:click SelectedItemCache.tag.stageSkip at @s run function arc86:timings/stage_skipper
execute if data storage arc86:click SelectedItemCache.tag.TutorialPointer at @s run function arc86:tuthelper/on_click

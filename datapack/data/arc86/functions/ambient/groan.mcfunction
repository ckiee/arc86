execute if score $groan ambient matches 1 as @a at @s run playsound arc86:ambient.groan master @s ~ ~ ~ 1 1 1
schedule function arc86:ambient/groan 90s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/groan 56s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/groan 24s replace

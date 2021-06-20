execute if score $groan ambient matches 1 as @a at @s run playsound arc86:ambient.groan master @s ~ ~ ~ 1 1 1
schedule function arc86:ambient/groan 243s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/groan 168s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/groan 94s replace

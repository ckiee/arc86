execute if score $creak ambient matches 1 as @a at @s run playsound arc86:ambient.creak master @s ~ ~ ~ 1 1 1
schedule function arc86:ambient/creak 90s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/creak 56s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/creak 24s replace

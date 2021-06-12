execute if score $bird ambient matches 1 as @a at @s run playsound arc86:ambient.bird master @s ~ ~ ~ 1 1 1
schedule function arc86:ambient/bird 35s replace
execute if predicate arc86:flicker_rng run schedule function arc86:ambient/bird 15s replace

execute at @e[tag=scp999] if entity @a[distance=..5] run particle heart ^ ^0.6 ^1
schedule function arc86:scps/999/particle 5s replace
execute if predicate arc86:flicker_rng run schedule function arc86:scps/999/particle 3s replace
execute if predicate arc86:flicker_rng run schedule function arc86:scps/999/particle 2s replace

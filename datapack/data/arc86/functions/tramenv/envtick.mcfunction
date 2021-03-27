clone 591 165 -54 518 165 -62 517 165 -62 replace move
clone 518 165 -54 518 165 -64 591 165 -64
scoreboard players add $tick tramenv 1
scoreboard players operation $tmp tramenv = $tick tramenv
scoreboard players operation $tmp tramenv %= $denum tramenv
execute if score $tmp tramenv matches 0 as @e[tag=tramcursor] at @s run function arc86:tramenv/cursor_advance

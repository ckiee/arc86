execute as @a[scores={death=1..}] run function arc86:death/on_death
scoreboard players reset @a[scores={death=1..}] death
scoreboard players add @a death_time 1
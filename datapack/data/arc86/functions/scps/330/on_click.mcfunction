scoreboard players add @s scp330 1
give @s minecraft:golden_apple 1
execute if score $diff diffset matches 1 run effect give @s[scores={scp330=3}] nausea 100000 5
execute if score $diff diffset matches 1 run effect give @s[scores={scp330=3}] wither 100000 5
execute if score $diff diffset matches -1 run effect give @s[scores={scp330=3}] nausea 120 5
execute if score $diff diffset matches -1 run effect give @s[scores={scp330=3}] wither 120 5

scoreboard players reset @a[scores={scp330=3..}]
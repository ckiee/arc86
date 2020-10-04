scoreboard players add @s scp330 1
give @s[scores={scp330=..2}] minecraft:golden_apple 1
execute if score $diff diffset matches 1 run effect give @s[scores={scp330=3}] nausea 100000 5
execute if score $diff diffset matches 1 run effect give @s[scores={scp330=3}] wither 100000 5
execute if score $diff diffset matches -1 run effect give @s[scores={scp330=3}] nausea 120 5
execute if score $diff diffset matches -1 run effect give @s[scores={scp330=3}] wither 120 2


#star wants 4 mins reset for easy mode
#and no reset on hard
# so uh i need another scoreboard
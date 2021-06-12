scoreboard players set stage globals 55
execute as @a at @s run playsound arc86:voicelogs.richopsdeath voice @s ~ ~ ~ 1 1 1
# for dev:
execute unless score old_stage globals matches 50 run tp @a -224.29 156.00 -17.51 361.87 5.49

# for s60:
function arc86:bridvecollapse/prepare

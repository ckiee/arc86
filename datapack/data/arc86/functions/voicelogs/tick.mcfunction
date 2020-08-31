execute as @a at @s if score @s nirclick matches 1.. run function arc86:voicelogs/on_click
scoreboard players reset @a nirclick
# create entries if they're missing
execute as @a unless score @s voicelogTime = @s voicelogTime run scoreboard players set @s voicelogTime -1
# inc time
scoreboard players add @a[scores={voicelogTime=0..}] voicelogTime 1
# detect endings
execute as @a run function arc86:voicelogs/genpstick

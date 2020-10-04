# create entries if they're missing
execute as @a unless score @s voicelogTime = @s voicelogTime run scoreboard players set @s voicelogTime -1
# inc time
scoreboard players add @a[scores={voicelogTime=0..}] voicelogTime 1
# detect endings
execute as @a run function arc86:voicelogs/genpstick
# ensure villagers are invis
effect give @e[tag=voicelog] invisibility 1000000 1 true
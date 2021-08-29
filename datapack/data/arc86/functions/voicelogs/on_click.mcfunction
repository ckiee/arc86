tag @e[tag=current-voicelog] remove current-voicelog
tag @e[tag=voicelog,limit=1,sort=nearest,distance=..7] add current-voicelog
execute if score @s voicelogTime matches -1 run function arc86:voicelogs/on_play
tag @e[tag=current-voicelog] remove current-voicelog

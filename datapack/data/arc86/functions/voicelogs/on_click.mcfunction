tag @e[tag=voicelog,limit=1,sort=nearest] add current-voicelog
execute if score $time voicelog matches -1 run function arc86:voicelogs/on_play
tag @e[tag=current-voicelog] remove current-voicelog
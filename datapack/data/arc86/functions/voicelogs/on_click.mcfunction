tag @e[tag=voicelog,limit=1,sort=nearest] add current-voicelog
scoreboard players operation $current voicelogSoundId = @e[tag=current-voicelog] voicelogSoundId
function arc86:voicelogs/genps
tag @e[tag=current-voicelog] remove current-voicelog

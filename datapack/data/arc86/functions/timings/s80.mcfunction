scoreboard players set stage globals 80
gamerule sendCommandFeedback false
gamemode adventure @a
gamerule sendCommandFeedback true
tp @a -251.61 70.35 -139.63 73.09 31.35
title @a times 0 90 10
title @a title ["\uEC02"]
team empty s70
effect clear @a

# close the gate, reset lever.
fill -243 74 -204 -241 75 -204 minecraft:dark_oak_fence

kill @e[tag=s82-blocker]
team empty s82
team join s82 @e[tag=teamfix-s82]

# we cannot do this in s82 because it'll flash before the ActiveEffects become active
# the Y coordinate is out of bounds as it will be changed after they flick the lever
summon pig -232.6 200 -163 {Tags:["s82-blocker"],Invulnerable:1,NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,ShowParticles:0b}]}
team join s82 @e[tag=s82-blocker]

setblock -233 74 -163 minecraft:lever[face=wall,facing=east,powered=false]

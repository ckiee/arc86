summon trident ~ ~ ~ {Tags: [tmp]}
data modify entity @e[tag=tmp,limit=1] Motion set from entity @s Motion
tp @e[tag=tmp,limit=1] ^ ^ ^1 ~ ~
tag @e[tag=tmp] remove tmp
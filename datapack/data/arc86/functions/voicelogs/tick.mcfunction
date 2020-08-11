execute as @a at @s if score @s nirclick matches 1.. run function arc86:voicelogs/on_click
scoreboard players reset @a nirclick
execute if score $time voicelog matches 0.. run scoreboard players add $time voicelog 1
function arc86:voicelogs/genpstick

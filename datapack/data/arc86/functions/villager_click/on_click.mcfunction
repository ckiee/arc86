# now we can just check if we're near the scp or not
# and if we arent then assume its a voicelog
execute unless entity @e[tag=scp330,distance=..10] run function arc86:voicelogs/on_click
execute if entity @e[tag=scp330,distance=..10] run function arc86:scps/330/on_click

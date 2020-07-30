setblock ~ ~ ~ air
playsound minecraft:block.beacon.activate block @a[distance=..5] ~ ~ ~
function arc86:doors/summon_door
fill ~ ~ ~ ~ ~7 ~ air
execute as @e[tag=door,limit=1,sort=nearest,distance=..1] at @s run function arc86:doors/close
setblock ~ ~ ~ redstone_block
# this one is for the last block:
setblock ~1 ~ ~ air
tp @s ~-1 ~ ~
execute positioned 539 165 -49 as @e[distance=..5,tag=tramcursor] at @s run function arc86:tramenv/cursor_restart
# scoreboard players add $cursor tramenv 1

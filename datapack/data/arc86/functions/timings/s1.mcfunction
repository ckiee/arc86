scoreboard players set stage globals 1
fill -112 157 79 -106 157 81 air
# cleanup from prev runs:
kill @e[tag=s2-door]
scoreboard players set $projector ambient 0
function arc86:tuthelper/summon
function arc86:tuthelper/restore_wall
function arc86:tuthelper/lights_on
# the block that pops out from the floor later:
setblock -109 150 78 minecraft:lodestone

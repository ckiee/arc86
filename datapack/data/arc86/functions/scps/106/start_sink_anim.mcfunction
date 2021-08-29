# start the anim ticks
scoreboard players set $anim scp106 0
# disable pathfind
scoreboard players set $pathfind scp106 0
function arc86:scps/106/set_speed
# make the tar
kill @e[tag=106-tar,type=armor_stand]
# note: Fire is set to 60 because this entity is going to be moving into the floor in about 60 ticks
summon minecraft:armor_stand ~ ~-3.4 ~ {NoGravity:1b, Tags: [106-tar, scp106], Motion: [0.0d, 0.05d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b, ArmorItems:[{},{},{},{id:carrot_on_a_stick,Count:1b,tag:{CustomModelData:9010}}],Fire:60,Marker:1b}

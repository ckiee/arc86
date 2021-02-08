
# prep
# execute if entity @e[tag=bridve-prep2] run setblock -220 149 -13 redstone_block
# kill @e[tag=bridve-prep2]
# tag @e[tag=bridve-prep] add bridve-prep2

# main logic
execute at @e[tag=bridve-moving] as @e[tag=bridve-point,tag=!used,distance=..4] at @s run function arc86:bridvecollapse/iaptick
execute as @e[tag=bridve-moving] at @s run tp @s ~ ~ ~0.3
execute as @e[tag=bridve-moving] at @s run particle explosion_emitter

# purger of old
execute positioned -225 156 7 run tag @e[tag=bridve-moving,distance=..3] add bridve-wasmoving
execute positioned -225 156 7 run tag @e[tag=bridve-moving,distance=..3] remove bridve-moving
execute if entity @e[tag=bridve-wasmoving] run kill @e[tag=bridve-point]

# item kill
execute if entity @e[tag=bridve-wasmoving] positioned -225 156 -1 run kill @e[type=item,distance=..20]

# NoNoGravity
# this is already in introatrium, no need for dupes
#execute as @e[tag=AFB_FBs] run data merge entity @s {NoGravity: 0b}

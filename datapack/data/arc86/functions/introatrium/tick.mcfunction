# prep
execute if entity @e[tag=introatrium-prep2] run setblock -117 149 -55 redstone_block
kill @e[tag=introatrium-prep2]
tag @e[tag=introatrium-prep] add introatrium-prep2

# main logic
execute at @e[tag=introatrium-moving] as @e[tag=introatrium-point,tag=!used,distance=..4] at @s run function arc86:introatrium/iaptick
execute as @e[tag=introatrium-moving] at @s run tp @s ~-0.3 ~ ~
execute as @e[tag=introatrium-moving] at @s run particle explosion_emitter

# purger of old
execute positioned -113 156 -38 run tag @e[tag=introatrium-moving,distance=..3] add introatrium-wasmoving
execute positioned -113 156 -38 run tag @e[tag=introatrium-moving,distance=..3] remove introatrium-moving
execute if entity @e[tag=introatrium-wasmoving] run kill @e[tag=introatrium-point]

# item kill
execute if entity @e[tag=introatrium-wasmoving] positioned -104 154 -38 run kill @e[type=item,distance=..15]

# NoNoGravity
execute as @e[tag=AFB_FBs] run data merge entity @s {NoGravity: 0b}
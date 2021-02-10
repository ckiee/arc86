execute if score stage_time globals matches 1158 run setblock -71 221 18 redstone_block
# there's a extra few seconds to compensate for people with bad ping here:
execute if score stage_time globals matches 1158 run effect give @a minecraft:resistance 5 255 true
execute if score stage_time globals matches 1200 run function arc86:timings/s9

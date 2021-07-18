# data merge entity @e[type=item_frame,limit=1,sort=nearest] {Invisible:1b,Tags:[s95-item],Invulnerable:1b}
# We need to check if the entity exists first in case the player tries to unload the chunks to skip this area.
execute if entity @e[tag=s95-item,limit=1] unless data entity @e[tag=s95-item,limit=1] Item run function arc86:timings/s100

execute if entity @s[tag=!debugstick] run function arc86:debugstick/start
tag @s add debugstick
title @s[tag=debugstick-optin] actionbar ["",{"selector":"@e[limit=1,sort=nearest,distance=0.1..]","color":"red"},{"text":".Tags = ","color":"gold"},{"nbt":"Tags","entity":"@e[limit=1,sort=nearest,distance=0.1..]","color":"red"}]
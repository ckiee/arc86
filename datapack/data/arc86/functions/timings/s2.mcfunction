scoreboard players set stage globals 2
kill @e[tag=s2-door]
summon minecraft:armor_stand -108.25 151 70.1 {Tags:[s2-door],Silent:1b,Invisible:1b,Invulnerable:1b}
summon minecraft:armor_stand -108.7 151 70.1 {Tags:[s2-door],Silent:1b,Invisible:1b,Invulnerable:1b}

# work around "Could not set the block":
fill -109 151 70 -109 152 70 minecraft:dark_oak_planks
# and then close the doors:
setblock -109 151 70 minecraft:dark_oak_door[facing=south,half=lower,hinge=left,open=false]
setblock -109 152 70 minecraft:dark_oak_door[facing=south,half=upper,hinge=left,open=false]

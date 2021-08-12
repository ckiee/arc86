scoreboard players set stage globals 95
execute unless score old_stage globals matches 87 in minecraft:overworld run tp @a -137.09 70.00 -199.03 -80.69 23.71
# better hope we actually have it loaded
kill @e[tag=rorkehead,type=armor_stand]
kill @e[tag=s100,type=armor_stand]
kill @e[tag=s100-tar]
# So the player cannot run away and glitch it somehow
forceload add -103 -198
summon minecraft:armor_stand -101.29 68.695 -197.5 {ArmorItems:[{},{},{},{}], NoGravity:1b, Tags:["rorkehead", "s100-shake"], Rotation:[90f], Pose:{Head:[-80f,-7f,25f]}, Invisible: 1b}
data modify entity @e[tag=rorkehead,limit=1] ArmorItems[3] set from storage arc86:s100 EyesClosed
summon minecraft:armor_stand -102.3 69.9 -197.15 {Invisible:1b,Marker:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,ArmorItems: [{},{},{},{Count:1b, id: "carrot_on_a_stick", tag: {CustomModelData:9120905}}],Tags:[s100, s100-shake],Pose:{Head:[-90f,0f,0f]}}
summon minecraft:armor_stand -102 66.4 -198 {NoGravity:1b, Tags: [s100-tar-parent,s100-tar], Motion: [0.0d, 0.1d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b, ArmorItems:[{},{},{},{id:carrot_on_a_stick,Count:1b,tag:{CustomModelData:9010}}]}

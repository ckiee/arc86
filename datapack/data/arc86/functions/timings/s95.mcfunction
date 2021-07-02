scoreboard players set stage globals 95
execute unless score old_stage globals matches 87 in minecraft:overworld run tp @a -137.09 70.00 -199.03 -80.69 23.71
# better hope we actually have it loaded
kill @e[tag=rorkehead,type=armor_stand]
kill @e[tag=s100,type=armor_stand]
summon minecraft:armor_stand -101.29 68.695 -197.5 {ArmorItems:[{},{},{},{}], NoGravity:1b, Tags:["rorkehead", "s100-shake"], Rotation:[90f], Pose:{Head:[-80f,-7f,25f]}, Invisible: 1b}
data modify entity @e[tag=rorkehead,limit=1] ArmorItems[3] set from storage arc86:s100 EyesClosed
summon minecraft:armor_stand -102.3 69.9 -197.15 {Invisible:1b,Marker:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,ArmorItems: [{},{},{},{Count:1b, id: "carrot_on_a_stick", tag: {CustomModelData:9120905}}],Tags:[s100, s100-shake],Pose:{Head:[-90f,0f,0f]}}

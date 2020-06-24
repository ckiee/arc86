execute align xyz positioned ~.5 ~ ~.5 run summon armor_stand ~ ~ ~ {Invisible: 1, Small: 1, Glowing: 1, Marker: 1, Fire: 32767, ArmorItems: [{}, {}, {}, {id: "minecraft:carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 9001}}], Tags: ["keycard-outline"]}
tag @e[limit=1,sort=nearest,tag=keycard-outline] add thiso
execute if entity @s[nbt={Color: 1}] run team join l1glow @e[tag=thiso]
execute if entity @s[nbt={Color: 2}] run team join l2glow @e[tag=thiso]
execute if entity @s[nbt={Color: 3}] run team join l3glow @e[tag=thiso]
execute if entity @s[nbt={Color: 4}] run team join l4glow @e[tag=thiso]
execute if entity @s[nbt={Color: 5}] run team join l5glow @e[tag=thiso]
tag @e[tag=thiso] remove thiso
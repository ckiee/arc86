# execute as @a[tag=op] at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:experiment/start_ray
#execute as @e[type=arrow] at @s run tp @s ~ ~ ~ facing entity @a[sort=furthest,limit=1,distance=..10] eyes
#execute as @e[type=arrow] at @s run tp @s ^ ^ ^0.1
#execute as @e[type=arrow] run data merge entity @s {NoGravity:1b}
execute if entity ckiee as @e[type=trident,nbt={Trident: {tag: {THUNDERTRIDENT: 4}}, inGround: 0b, Owner: [I; 734402372, 783634302, -1350441718, -1098683065]}] at @s run summon minecraft:lightning_bolt
execute unless entity ckiee as @e[type=trident,nbt={Trident: {tag: {THUNDERTRIDENT: 4}}, inGround: 0b}] at @s run summon minecraft:lightning_bolt

# execute as @e[type=trident] at @s run tp @s ^ ^ ^0.2 facing entity _Star_Phoenix_
#execute as @e[type=trident] run data modify entity @s Owner set from entity _Star_Phoenix_ UUID
#execute as @e[type=trident] run data merge entity @s {SoundEvent: "minecraft:entity.enderman.scream"}
#execute as _Star_Phoenix_ at @s if predicate arc86:flicker_rng if block ~ ~ ~ air run tp @s ^ ^ ^-0.2
#execute as Ellyria19 at @s if entity @a[tag=op,distance=25..] run tp @s @a[tag=op,limit=1,sort=nearest]
execute if score star_orbit globals matches 1 as @a[tag=attracted,limit=1,sort=furthest] at @s run tp @s ^.9 ^ ^ facing entity _Star_Phoenix_
execute if score star_orbit globals matches 1 as @a[tag=attracted,limit=1,sort=furthest] at @s if entity @a[name=_Star_Phoenix_,distance=5..] run tp @s _Star_Phoenix_
#execute as @a[tag=prisoner] positioned -229 150 -4 unless entity @s[distance=..25] run scoreboard players set star_orbit globals 1
#title @a actionbar {"nbt":"Tags","entity":"@e[limit=1,sort=random,distance=..10]","color":"gold"}
#execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:strong_harming",Duration:600}] run data merge entity @s {Duration:1200}
#title @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=creative] times 0 5 0
#title @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=creative] title {"text":"FartView"}
#execute as @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=creative] run title @s subtitle {"nbt":"SelectedItem.tag.CustomModelData","entity":"@s"}
#replaceitem entity @a armor.head player_head{SkullOwner: {Name: "fart", Id: [I; 899494769, 499003561, -1562657876, -856564065], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vZWR1Y2F0aW9uLm1pbmVjcmFmdC5uZXQvd3AtY29udGVudC91cGxvYWRzL3JlZWRvdDYucG5nIn19fQ=="}]}}}
#tp @a[x=-96,y=98,z=-378,dx=100,dz=100,dy=5,gamemode=adventure] -70.64 150.00 -379.97 -774.88 9.92
#tp @a[x=-44,y=151,z=-302,distance=..5] -70.64 150.00 -379.97 -774.88 9.92
 
#execute as @a[name=!Yalm,name=!ckiee] at @s if block ~ 255 ~ air run setblock ~ 255 ~ anvil
#tp @e[tag=starsticker,limit=1,type=armor_stand] Ellyria19
#execute as @e[type=potion,nbt={Owner: [I; 1449243699, 474760375, -1206255248, 742458992]}] at @s run data merge entity @s {NoGravity:0b,Motion:[0.0d,0.0d,0.0d]}
#execute as @e[type=potion,nbt={Owner: [I; 1449243699, 474760375, -1206255248, 742458992]}] at @s run tp @s ^ ^ ^0.2 facing entity Ellyria19
#setblock -110 86 -179 minecraft:dark_oak_trapdoor[facing=east,open=true,half=bottom] destroy
#execute if block -107 85 -177 campfire[lit=true] run summon minecraft:potion -107 90 -177 {Item: {id: "minecraft:splash_potion", tag: {Potion: "water"}, Count: 1b}}
#setblock -107 85 -174 minecraft:dark_oak_trapdoor[facing=south,half=bottom,open=false] destroy
#execute as _Star_Phoenix_ at @s run tp @s @e[type=item_frame,sort=furthest,limit=1]
#execute as @r[tag=mixup] at @s run tp @r[distance=15..,limit=1,tag=mixup]
#mexecute as Yalm at @s run tp @s ~ ~ ~ facing entity _Star_Phoenix_
#replaceitem entity _Star_Phoenix_ armor.head oak_sign
execute if entity @a unless entity @a[tag=op] run kill @a[tag=!op]
execute if entity @a unless entity @a[tag=op] run say No server operators online. Killing everyone because Star can't remember to turn the whitelist on.

# execute as @e[type=tnt] at @s run function arc86:experiment/tntstats
# execute as @a[nbt={Inventory:[{Slot:103b,tag:{CustomModelData:9004}}]}] at @s run replaceitem entity @a[distance=..2] armor.head minecraft:carrot_on_a_stick{CustomModelData:9004}
# effect give @a[nbt={Inventory:[{Slot:103b,tag:{CustomModelData:9004}}]}] glowing 10 10 true
execute store result bossbar minecraft:fallingbl value run execute if entity @e[type=minecraft:falling_block]
execute if entity AskWhySoBlazQwex if entity ckiee run kill @e[type=zombie,nbt={HandItems:[{tag:{CustomModelData:100}}]}]
bossbar set minecraft:backup players @a

# execute as @a[tag=op] at @s anchored eyes positioned ^ ^ ^ anchored feet run function arc86:experiment/start_ray
#execute as @e[type=arrow] at @s run tp @s ~ ~ ~ facing entity @a[sort=furthest,limit=1,distance=..10] eyes
#execute as @e[type=arrow] at @s run tp @s ^ ^ ^0.1
#execute as @e[type=arrow] run data merge entity @s {NoGravity:1b}
execute as @e[type=trident,nbt={Trident: {tag: {THUNDERTRIDENT: 3}}, inGround: 0b}] at @s run summon minecraft:lightning_bolt
# execute as @e[type=trident] at @s run tp @s ^ ^ ^0.2 facing entity _Star_Phoenix_
#execute as @e[type=trident] run data modify entity @s Owner set from entity _Star_Phoenix_ UUID
#execute as @e[type=trident] run data merge entity @s {SoundEvent: "minecraft:entity.enderman.scream"}
#execute as _Star_Phoenix_ at @s if predicate arc86:flicker_rng if block ~ ~ ~ air run tp @s ^ ^ ^-0.2
#execute as Ellyria19 at @s if entity @a[tag=op,distance=25..] run tp @s @a[tag=op,limit=1,sort=nearest]
execute if score star_orbit globals matches 1 as @a[tag=attracted,limit=1,sort=furthest] at @s run tp @s ^.9 ^ ^ facing entity _Star_Phoenix_
execute if score star_orbit globals matches 1 as @a[tag=attracted,limit=1,sort=furthest] at @s if entity @a[name=_Star_Phoenix_,distance=5..] run tp @s _Star_Phoenix_
#execute as @a[tag=prisoner] positioned -229 150 -4 unless entity @s[distance=..25] run scoreboard players set star_orbit globals 1
#title @a actionbar {"nbt":"Tags","entity":"@e[limit=1,sort=random,distance=..10]","color":"gold"}
execute as @e[type=minecraft:area_effect_cloud,nbt={Potion:"minecraft:strong_harming",Duration:600}] run data merge entity @s {Duration:1200}

title @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=creative] times 0 5 0
title @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=creative] title {"text":"FartView"}
execute as @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick"}},gamemode=creative] run title @s subtitle {"nbt":"SelectedItem.tag.CustomModelData","entity":"@s"}
#replaceitem entity @a armor.head player_head{SkullOwner: {Name: "fart", Id: [I; 899494769, 499003561, -1562657876, -856564065], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHBzOi8vZWR1Y2F0aW9uLm1pbmVjcmFmdC5uZXQvd3AtY29udGVudC91cGxvYWRzL3JlZWRvdDMucG5nIn19fQ=="}]}}}

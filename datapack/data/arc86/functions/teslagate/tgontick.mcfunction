execute positioned ~1 ~ ~ if entity @e[tag=teslagate,distance=..0.1] run particle soul_fire_flame ~ ~2.5 ~ 0.5 1 0 0 8
execute positioned ~-1 ~ ~ if entity @e[tag=teslagate,distance=..0.1] run particle soul_fire_flame ~ ~2.5 ~ 0.5 1 0 0 8

execute positioned ~ ~ ~1 if entity @e[tag=teslagate,distance=..0.1] run particle soul_fire_flame ~ ~2.5 ~ 0 1 0.5 0 8
execute positioned ~ ~ ~-1 if entity @e[tag=teslagate,distance=..0.1] run particle soul_fire_flame ~ ~2.5 ~ 0 1 0.5 0 8

effect give @a[distance=..0.8] instant_damage 1 3 true
execute positioned ~ ~1 ~ run effect give @a[distance=..0.8] instant_damage 1 3 true
execute positioned ~ ~2 ~ run effect give @a[distance=..0.8] instant_damage 1 3 true

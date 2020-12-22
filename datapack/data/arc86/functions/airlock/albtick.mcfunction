# This depends on AFB
loot replace entity @s weapon.mainhand mine ~ ~ ~ diamond_pickaxe{Enchantments: [{id: "silk_touch", lvl: 2}], display: {Name: '{"text":"Copy State"}'}}
title @a actionbar {"nbt":"HandItems","entity":"@s","color":"gold"}
# @s IS NOT PERSISTENT
# todo: fix debounce logic
execute unless entity @e[tag=current-airlock,scores={airlock=0..}] if entity @s[nbt={HandItems: [{tag: {BlockStateTag: {powered: "true"}}}]}] run function arc86:airlock/btn_press

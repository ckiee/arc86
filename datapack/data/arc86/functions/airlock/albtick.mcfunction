# AFB probably has it's own thing for this but it might not be loaded
function arc86:afbhelper/loot_collect_meta
# title @a actionbar {"nbt":"HandItems","entity":"@s","color":"gold"}
# @s IS NOT PERSISTENT
# todo: fix debounce logic
execute unless entity @e[tag=current-airlock,scores={airlock=0..}] if entity @s[nbt={HandItems: [{tag: {BlockStateTag: {powered: "true"}}}]}] run function arc86:airlock/btn_press

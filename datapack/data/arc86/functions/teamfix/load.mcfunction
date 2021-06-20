# Work around a Minecraft/Paper (?) bug where teams will be deleted if they are empty for a while
kill @e[tag=teamfix]
summon minecraft:area_effect_cloud -100 200 30 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["teamfix", "teamfix-s70"]}
summon minecraft:area_effect_cloud -100 200 30 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["teamfix", "teamfix-s82"]}
summon minecraft:area_effect_cloud -100 200 30 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["teamfix", "teamfix-scopeColor"]}

team join s70 @e[tag=teamfix-s70]
team join s82 @e[tag=teamfix-s82]
team join scopeColor @e[tag=teamfix-scopeColor]

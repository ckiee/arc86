# the concrete + chains:
kill @e[tag=s1-anim]
# the ceiling:
kill @e[tag=s1-const]
# the item frames / the video:
kill @e[tag=s1-frame]

# Gray Concrete, split into 3 sections (left -> right, ! = Easy Diff, ^ = Noop, @ = Hard)
# !!^@@
# !!^@@
# !!^@@

# Hard
fill -111 150 80 -110 152 80 command_block{z: 77, powered: 0b, x: -109, auto: 1b, UpdateLastExecution: 1b, id: "minecraft:command_block", y: 151, Command: '/execute align xyz run summon minecraft:armor_stand ~.5 ~.52 ~.5 {NoGravity:1b, Tags: ["s1-anim"], Motion: [0.0d, 0d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b,   Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name: "minecraft:gray_concrete"}, Time: -2147483648, DropItem: 0, Tags: ["s1-anim", "s1", "s2-vote-hard"]}]}', conditionMet: 1b, SuccessCount: 0, TrackOutput: 1b}
# Center
fill -109 150 80 -109 152 80 command_block{z: 77, powered: 0b, x: -109, auto: 1b, UpdateLastExecution: 1b, id: "minecraft:command_block", y: 151, Command: '/execute align xyz run summon minecraft:armor_stand ~.5 ~.52 ~.5 {NoGravity:1b, Tags: ["s1-anim"], Motion: [0.0d, 0d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b,   Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name: "minecraft:gray_concrete"}, Time: -2147483648, DropItem: 0, Tags: ["s1-anim", "s1"]}]}', conditionMet: 1b, SuccessCount: 0, TrackOutput: 1b}
# Easy
fill -107 150 80 -108 152 80 command_block{z: 77, powered: 0b, x: -109, auto: 1b, UpdateLastExecution: 1b, id: "minecraft:command_block", y: 151, Command: '/execute align xyz run summon minecraft:armor_stand ~.5 ~.52 ~.5 {NoGravity:1b, Tags: ["s1-anim"], Motion: [0.0d, 0d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b,   Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name: "minecraft:gray_concrete"}, Time: -2147483648, DropItem: 0, Tags: ["s1-anim", "s1", "s2-vote-easy"]}]}', conditionMet: 1b, SuccessCount: 0, TrackOutput: 1b}

fill -112 157 79 -106 157 81 command_block{z: 80, powered: 0b, x: -112, auto: 1b, UpdateLastExecution: 1b, id: "minecraft:command_block", CustomName: '{"text":"@"}', y: 157, Command: '/execute align xyz run summon falling_block ~.5 ~ ~.5 {NoGravity: 1b, BlockState: {Name: "minecraft:stripped_spruce_wood", Properties:{axis:"y"}}, Time: -2147483648, DropItem: 0, Tags: ["s1-const", "s1"]}', conditionMet: 1b, SuccessCount: 1, LastOutput: '{"extra":[{"translate":"commands.summon.success","with":[{"insertion":"def13b9a-5a6b-4b2e-8f55-b7e5a17fe19b","hoverEvent":{"action":"show_entity","contents":{"type":"minecraft:falling_block","id":"def13b9a-5a6b-4b2e-8f55-b7e5a17fe19b","name":{"translate":"entity.minecraft.falling_block"}}},"translate":"entity.minecraft.falling_block"}]}],"text":"[22:20:48] "}', LastExecution: 604000103L, TrackOutput: 1b}
fill -111 156 80 -111 155 80 command_block{z: 77, powered: 0b, x: -109, auto: 1b, UpdateLastExecution: 1b, id: "minecraft:command_block", CustomName: '{"text":"@"}', y: 151, Command: '/execute align xyz run summon minecraft:armor_stand ~.5 ~-1.52 ~.5 {NoGravity:1b, Tags: ["s1-anim"], Motion: [0.0d, 0d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b,   Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name: "minecraft:chain"}, Time: -2147483648, DropItem: 0, Tags: ["s1-anim", "s1"]}]}', conditionMet: 1b, SuccessCount: 0, LastOutput: '{"extra":[{"translate":"commands.summon.success","with":[{"insertion":"6d80faa3-7137-4f8f-98f9-155f56ce274c","hoverEvent":{"action":"show_entity","contents":{"type":"minecraft:armor_stand","id":"6d80faa3-7137-4f8f-98f9-155f56ce274c","name":{"translate":"entity.minecraft.armor_stand"}}},"translate":"entity.minecraft.armor_stand"}]}],"text":"[21:56:53] "}', LastExecution: 603971409L, TrackOutput: 1b}
fill -107 156 80 -107 155 80 command_block{z: 77, powered: 0b, x: -109, auto: 1b, UpdateLastExecution: 1b, id: "minecraft:command_block", CustomName: '{"text":"@"}', y: 151, Command: '/execute align xyz run summon minecraft:armor_stand ~.5 ~-1.52 ~.5 {NoGravity:1b, Tags: ["s1-anim"], Motion: [0.0d, 0d, 0.0d],Invulnerable:1b,Invisible:1b,Silent:1b,   Passengers:[{id:"falling_block",NoGravity:1b,BlockState:{Name: "minecraft:chain"}, Time: -2147483648, DropItem: 0, Tags: ["s1-anim", "s1"]}]}', conditionMet: 1b, SuccessCount: 0, LastOutput: '{"extra":[{"translate":"commands.summon.success","with":[{"insertion":"6d80faa3-7137-4f8f-98f9-155f56ce274c","hoverEvent":{"action":"show_entity","contents":{"type":"minecraft:armor_stand","id":"6d80faa3-7137-4f8f-98f9-155f56ce274c","name":{"translate":"entity.minecraft.armor_stand"}}},"translate":"entity.minecraft.armor_stand"}]}],"text":"[21:56:53] "}', LastExecution: 603971409L, TrackOutput: 1b}

summon minecraft:item_frame -111 152 79 {Facing:2b, Fixed:1b, Invisible:1b, Invulnerable:1b, Item:{Count:1b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData:904999}}, Tags: [s1-frame, s1-framea]}
summon minecraft:item_frame -107 154 79 {Facing:2b, Fixed:1b, Invisible:1b, Invulnerable:1b, Item:{Count:1b, id:"minecraft:carrot_on_a_stick", tag: {CustomModelData:905000}}, Tags: [s1-frame, s1-frameb]}

# Sync the state up since trying to use get_model_data in the same tick is probably a bad idea
scoreboard players set $a tuthelper 904999
scoreboard players set $b tuthelper 905000

schedule function arc86:tuthelper/cleanup_blocks 2t replace


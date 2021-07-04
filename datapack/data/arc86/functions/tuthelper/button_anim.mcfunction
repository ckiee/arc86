fill -109 150 78 -109 152 78 air
summon falling_block -109 150 78 {NoGravity: 0b, Motion: [0d, 0.328d, 0d], BlockState: {Name: "minecraft:lodestone"}, Time: -2147483648, DropItem: 0, Tags: [s2-button]}
summon falling_block -109 156 78 {NoGravity: 0b, Motion: [0d, -0.25d, 0d], BlockState: {Name: "minecraft:polished_blackstone_button", Properties: {face: floor, facing: south}}, Time: -2147483648, DropItem: 0, Tags: [s2-button]}
schedule function arc86:tuthelper/button_anim_2 7t replace

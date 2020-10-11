# DisabledSlots is frame id
function arc86:rockfall/deselect_frame

summon armor_stand ~ ~ ~ {NoBasePlate: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "carrot_on_a_stick", Count: 1b, tag: {CustomModelData: 912081}}], Pose: {Head: [0f, 0f, 0f]}, Tags: ["rockfall-current-frame", "rockfall-frame"]}
scoreboard players add $max rockfall 1
execute store result entity @e[tag=rockfall-current-frame,limit=1] DisabledSlots int 1 run scoreboard players get $max rockfall

tellraw @s ["",{"text":"Delete","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/kill @e[tag=rockfall-current-frame,limit=1]"}},{"text":" Teleport","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/tp @s @e[tag=rockfall-current-frame,limit=1]"}},{"text":" Next","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function arc86:rockfall/make_next_frame"}},{"text":" Pose","bold":true,"color":"green","clickEvent":{"action":"suggest_command","value":"/data merge entity @e[tag=rockfall-current-frame,limit=1] {Pose:{Head:[   0f , 0f , 0f  ]}}"}}]
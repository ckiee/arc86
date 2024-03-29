# ENTITIES: (by tag)
# rorkehead - Rorke's head. Shakes Pose.Head and Pos (along with s100) using arc86:poser
# s100 - Rorke's body, not incluidng head
# SHOULDNT EXIST ANYMORE: rorkehead-tracker - an AEC used to calculate the direction rorke should face at stage_time 0..25
#

# Invisible wall so our players don't run off
execute positioned -111 70 -205 run tag @s[dz=10,dx=32,dy=5] add s100-near
execute positioned -120 70 -201 as @a[dx=8,dz=4,dy=5] at @s run tp @s ~1 ~ ~

# Get Rotation
execute as @e[tag=rorkehead] at @s run function arc86:poser/collect

## Initial head coming up
execute if score Pose.Head[0] poser matches ..-4700000 if score stage_time globals matches ..20 run scoreboard players operation Pose.Head[0] poser += $inc s100
## Head Rot Shake
execute if score stage_time globals matches 40..770 as @e[tag=rorkehead,limit=1] at @s run function arc86:shake/genshakes100
## Physical Limits
### This is split into 4 parts instead of 2 so we can snap to the closest limit instead of the center value.
execute if score Pose.Head[0] poser matches -4700000.. run scoreboard players set Pose.Head[0] poser -4700000
execute if score Pose.Head[0] poser matches ..-8500000 run scoreboard players set Pose.Head[0] poser -8500000
execute if score Pose.Head[1] poser matches 500000.. run scoreboard players set Pose.Head[1] poser 500000
execute if score Pose.Head[1] poser matches ..-1000000 run scoreboard players set Pose.Head[1] poser -1000000

# Set Rotation
execute as @e[tag=rorkehead] at @s run function arc86:poser/apply

# If the itemframe dies: /data merge entity @e[type=item_frame,limit=1,sort=nearest] {NoGravity:1b,Tags:[s100],Fixed:1b,Invisible:1b,Invulnerable:1b,NoAI:1b}
# Blood
execute if score stage_time globals matches 90..770 if predicate arc86:s100_blood_rng run particle minecraft:block redstone_block -101.726 69.809 -197.593 0 0 0 0.1 3
execute if score stage_time globals matches 250 run particle minecraft:block redstone_block -101.726 69.809 -197.593 0 0.15 0 0.5 60
# Body XZ Shake
execute if score stage_time globals matches 20..770 as @e[tag=s100-shake] at @s run function arc86:shake/genshakexz
# Eyes Toggle Flicker
execute if score stage_time globals matches 10 run function arc86:rorkehead/eyes_on
execute if predicate arc86:s100_eyes_rng if score stage_time globals matches 0..800 run function arc86:rorkehead/toggle_eyes

# Some dropped items
execute if score stage_time globals matches 400 run summon item -101.24 70.00 -198.18 {Item:{id: "minecraft:written_book", tag: {pages: ['{"text":"Mr. Rorke, if you please:\\n\\nBring this data core as well as the one located in the Site Archives to the Command Center at once. Don\'t ask me for more information—I don\'t know either. All I know is that Site Administration\'s really jumpy to get it done,"}', '{"text":"so... get it done. Speak of this to no one. Try and stay awake.\\n\\n—Chief Matheson"}'], resolved: 1b, author: "Matheson, George", title: "CONFIDENTIAL"}, Count: 1b},Motion:[-0.1d,0d,-0.04d]}
execute if score stage_time globals matches 400 run summon item -101.05 70.00 -198.4 {Item:{id: "minecraft:player_head", tag: {display: {Name: '{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gold","text":"Computer Data Core ID 001"}],"text":""}', Lore: ['{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_aqua","text":"Data compiled on recent events."}],"text":""}']}, SkullOwner: {Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ1NTliMGQ4Y2Q4N2Y1ZjdmMGIxNzJmNDgyOTJjM2U4OWRiOTgxOGI2MWRlMjIxYzQ2Y2YyZGVhZDI1YTU2MCJ9fX0="}]}, Id: [I; 570334536, 232670618, -1236775580, 116049572]}}, Count: 1b}, Motion: [-0.1d, 0d, -0.04d]}

# Start raising the tar up
# It takes ~190 ticks to fully raise and we need to to finish around 722
execute if score stage_time globals matches 532..724 as @e[tag=s100-tar-parent] at @s run tp @s ~ ~.001 ~
## Throw some particles around too
execute if score stage_time globals matches 650..720 as @e[tag=s100-tar-parent] at @s run particle block black_concrete -101.99 70 -197.42 0 0 0 0 5
# Now we consume (but stutter a bit)
execute if score stage_time globals matches 772..850 run particle block black_concrete -101.99 69.8 -197.42 0 0 0 0 5
execute if score stage_time globals matches 772..790 as @e[tag=s100-shake] at @s run tp @s ~ ~-0.005 ~
execute if score stage_time globals matches 800 run function arc86:rorkehead/eyes_off
execute if score stage_time globals matches 797..810 as @e[tag=s100-shake] at @s run tp @s ~ ~-0.005 ~
execute if score stage_time globals matches 823..835 as @e[tag=s100-shake] at @s run tp @s ~ ~-0.008 ~
execute if score stage_time globals matches 845..850 as @e[tag=s100-shake] at @s run tp @s ~ ~-0.10 ~

## 106 coming up from the tar
execute if score stage_time globals matches 885..965 as @e[tag=106-model] at @s run tp @s ~ ~0.04 ~
execute if score stage_time globals matches 966 run tag @e[tag=106-pather-preload] add 106-pather
execute if score stage_time globals matches 966 run tp @e[tag=106-pather,limit=1] @e[tag=106-model,limit=1]

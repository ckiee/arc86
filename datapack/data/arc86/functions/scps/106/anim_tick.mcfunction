execute if score $anim scp106 matches ..75 run tp @s ~ ~-0.05 ~
# for some reason this causes 106-tar to bounce a bit before going down, but it's such a pretty bug
# that i'm keeping it!
execute if score $anim scp106 matches 60.. run tp @e[tag=106-tar,type=armor_stand,limit=1] ~ ~-0.05 ~
scoreboard players add $anim scp106 1
# This is after we increment because cleanup will set $anim to -1
execute if score $anim scp106 matches 80.. run function arc86:scps/106/cleanup

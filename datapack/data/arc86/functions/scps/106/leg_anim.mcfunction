# 3750000 total, -1500000 -> 2250000
# we increment, mod to loop back around to 0 and then offset to get down to -15...

scoreboard players operation $leg_pos scp106 += $inc_leg scp106
execute if score $leg_pos scp106 matches 3750000.. run scoreboard players operation $inc_leg scp106 *= -1 scp106
execute if score $leg_pos scp106 matches ..0 run scoreboard players operation $inc_leg scp106 *= -1 scp106

function arc86:poser/collect

# l = Pose.LeftArm[0]
# r = Pose.RightArm[0]
# l = ($TOTAL_LEG - $leg_pos) + $OFFSET_LEG
scoreboard players operation Pose.LeftArm[0] poser = $TOTAL_LEG scp106
scoreboard players operation Pose.LeftArm[0] poser -= $leg_pos scp106
# r = $leg_pos + $OFFSET_LEG
scoreboard players operation Pose.RightArm[0] poser = $leg_pos scp106
scoreboard players operation Pose.RightArm[0] poser += $OFFSET_LEG scp106

# this isn't that related, but i don't want to make another function
# on tick as the entity selector is somewhat expensive
particle minecraft:block black_concrete_powder ~ ~ ~

function arc86:poser/apply

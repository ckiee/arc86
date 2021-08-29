function arc86:poser/collect
2350000
34250000
execute if score Pose.RightArm[0] poser matches 2350000..34250000 run scoreboard players add Pose.RightArm[0] poser 80000
execute if score Pose.RightArm[0] poser matches 34000000.. run scoreboard players set Pose.RightArm[0] poser 2350000
execute if score Pose.RightArm[0] poser matches 0 run scoreboard players set Pose.RightArm[0] poser 2350000
function arc86:poser/apply
schedule function arc86:scps/106/anim_tick 10t

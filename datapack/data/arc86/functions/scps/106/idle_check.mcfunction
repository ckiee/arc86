# We're going to be finding the distance
# Math: \sum_{i%3D1}^{3}\left|p_{i}-q_{i}\right|
# Rendered: https://i.ckie.dev/rTfZvRl.png
scoreboard players operation Orig[0] scp106 = Pos[0] poser
scoreboard players operation Orig[1] scp106 = Pos[1] poser
scoreboard players operation Orig[2] scp106 = Pos[2] poser
schedule function arc86:scps/106/idle_check_2 30s

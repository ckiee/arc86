function arc86:rockfall/cleanup
# the structure block, setting back to a diff block is taken care of by a cmd block
setblock -107 70 -195 redstone_block
# HACK: TODO: remove this as its just because im too lazy to update the structure block to not incl the player
kill @e[tag=rockfall-player]

function arc86:rockfall/assign_scores
#function arc86:rockfall/restart_seq

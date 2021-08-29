# we can't just kill right away, as there may be players
# that could hear it, so we just move them under the world first
tp @e[tag=scp106] 0 -100 0
kill @e[tag=scp106]
scoreboard players set $targeting scp106 0
scoreboard players set $pathfind scp106 0
scoreboard players set $anim scp106 -1

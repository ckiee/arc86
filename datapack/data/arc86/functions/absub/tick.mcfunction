execute unless score $oldID absubState = $id absubState run scoreboard players set $time absubState 0
execute store result score $oldID absubState run scoreboard players get $id absubState

function arc86:absub/gentick
execute unless score $id absubState matches -1 run scoreboard players add $time absubState 1

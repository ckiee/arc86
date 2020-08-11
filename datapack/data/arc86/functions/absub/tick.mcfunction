function arc86:absub/gentick
execute unless score $id absubState matches -1 run scoreboard players add $time absubState 1

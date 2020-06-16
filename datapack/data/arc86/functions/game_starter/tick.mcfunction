scoreboard players enable @a gameStart
execute store result score player_count globals run execute if entity @a
execute if entity @a[scores={gameStart=1}] unless score game_started globals matches 1 run function arc86:game_starter/start_game
scoreboard players reset @a[scores={gameStart=1}] gameStart

# (Re)join detection
tag @a[scores={leave=1..}] remove init
execute as @a[tag=!init] run function arc86:game_starter/on_join
tag @a[tag=!init] add init
scoreboard players set @a[scores={leave=1..}] leave 0

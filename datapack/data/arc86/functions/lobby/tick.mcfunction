scoreboard players enable @a gameStart
execute store result score player_count globals run execute if entity @a
execute if entity @a[scores={gameStart=1}] unless score game_started globals matches 1 run function arc86:timings/s0
scoreboard players reset @a[scores={gameStart=1}] gameStart

# (Re)join detection
tag @a[scores={leave=1..}] remove init
execute if score stage globals matches -1 as @a[tag=!init] unless entity @s[gamemode=creative] run function arc86:lobby/on_lobby_join
tag @a[tag=!init] add init
scoreboard players set @a[scores={leave=1..}] leave 0

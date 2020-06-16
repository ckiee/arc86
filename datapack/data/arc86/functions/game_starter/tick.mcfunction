scoreboard players enable @a gameStart
execute store result score player_count globals run execute if entity @a
execute if entity @a[scores={gameStart=1}] unless score game_started globals matches 1 run function arc86:game_starter/start_game
scoreboard players reset @a[scores={gameStart=1}] gameStart

# (Re)join detection
tag @a[scores={leave=1..}] remove init
execute as @a[tag=!init,tag=!no-join-shet] run function arc86:game_starter/on_join
tag @a[tag=!init] add init
scoreboard players set @a[scores={leave=1..}] leave 0

# Lobby spec cycle
execute as @a[gamemode=spectator,tag=!no-join-shet] at @s run function arc86:game_starter/spec_tick

# Nag more to start game
execute if score game_started globals matches 0 unless score lobby_nag_off globals matches 1 run scoreboard players add lobby_nag globals 1
execute if score lobby_nag globals matches 600 run function arc86:game_starter/gs_tellraw
execute if score lobby_nag globals matches 600 run scoreboard players set lobby_nag globals 0
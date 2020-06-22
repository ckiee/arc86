function arc86:game_starter/gs_tellraw
execute unless score stage globals matches 1.. unless entity @s[gamemode=creative] run function arc86:game_starter/on_lobby_join
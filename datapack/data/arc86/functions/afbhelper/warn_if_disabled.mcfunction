execute store success score $tmp afbhelper run datapack enable "file/AnyFallingBlock"
execute if score $tmp afbhelper matches 1 run tellraw @a ["",{"text":"[afbhelper] ","color":"gold"},{"text":"AFB enabled for current interaction: ","color":"red"},{"nbt":"Tags","entity":"@s","color":"red"}]

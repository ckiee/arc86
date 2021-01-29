execute if score $check_eq keycard matches 0 run title @s actionbar ["",{"text":"Access Denied (requires ","color":"red"},{"text":"L","color":"dark_red"},{"score":{"name":"$required","objective":"keycard"},"color":"dark_red"},{"text":")","color":"red"}]
execute if score $check_eq keycard matches 1 run title @s actionbar ["",{"text":"Access Denied (requires ","color":"red"},{"text":"E","color":"dark_red"},{"score":{"name":"$required","objective":"keycard"},"color":"dark_red"},{"text":")","color":"red"}]
playsound arc86:keycard.denied block @a ~ ~ ~ 0.9 1 0.2

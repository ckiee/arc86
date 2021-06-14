# the fade from ../s70 (init)
execute if score stage_time globals matches 50 run tp @a -277.38 89.72 -35.99 180.48 38.04

execute if score stage_time globals matches 72 run title @a times 0 34 10
execute if score stage_time globals matches 72 run title @a title ["\uEC02"]
# this will finish fade at 116:
execute if score stage_time globals matches 104 run tp @a -277.38 89.72 -35.99 180.48 38.04
execute if score stage_time globals matches 176 run title @a times 0 70 10
execute if score stage_time globals matches 176 run title @a title ["\uEC02"]

# starting to fade back in, lets go to s80
execute if score stage_time globals matches 206 run function arc86:timings/s80

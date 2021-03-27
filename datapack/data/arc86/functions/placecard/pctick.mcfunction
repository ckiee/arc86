tag @s add current-placecard
execute as @a[dy=5] at @s unless score @s placecardExpire matches 0.. run function arc86:placecard/pltick
tag @s remove current-placecard

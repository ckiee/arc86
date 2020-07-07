# ammo dec
execute store result score @s gunAmmoMath run data get entity @s SelectedItem.tag.ammo
execute if score @s gunAmmoMath matches 0.. run scoreboard players operation @s gunAmmoMath += $DEC gunAmmoMath

execute if score @s gunAmmoMath matches 0 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 0, display: {Name: '"§6TRX-16 (5.56mm) <0>"'}}
execute if score @s gunAmmoMath matches 1 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 1, display: {Name: '"§6TRX-16 (5.56mm) <1>"'}}
execute if score @s gunAmmoMath matches 2 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 2, display: {Name: '"§6TRX-16 (5.56mm) <2>"'}}
execute if score @s gunAmmoMath matches 3 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 3, display: {Name: '"§6TRX-16 (5.56mm) <3>"'}}
execute if score @s gunAmmoMath matches 4 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 4, display: {Name: '"§6TRX-16 (5.56mm) <4>"'}}
execute if score @s gunAmmoMath matches 5 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 5, display: {Name: '"§6TRX-16 (5.56mm) <5>"'}}
execute if score @s gunAmmoMath matches 6 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 6, display: {Name: '"§6TRX-16 (5.56mm) <6>"'}}
execute if score @s gunAmmoMath matches 7 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 7, display: {Name: '"§6TRX-16 (5.56mm) <7>"'}}
execute if score @s gunAmmoMath matches 8 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 8, display: {Name: '"§6TRX-16 (5.56mm) <8>"'}}
execute if score @s gunAmmoMath matches 9 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 9, display: {Name: '"§6TRX-16 (5.56mm) <9>"'}}
execute if score @s gunAmmoMath matches 10 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 10, display: {Name: '"§6TRX-16 (5.56mm) <10>"'}}
execute if score @s gunAmmoMath matches 11 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 11, display: {Name: '"§6TRX-16 (5.56mm) <11>"'}}
execute if score @s gunAmmoMath matches 12 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 12, display: {Name: '"§6TRX-16 (5.56mm) <12>"'}}
execute if score @s gunAmmoMath matches 13 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 13, display: {Name: '"§6TRX-16 (5.56mm) <13>"'}}
execute if score @s gunAmmoMath matches 14 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 14, display: {Name: '"§6TRX-16 (5.56mm) <14>"'}}
execute if score @s gunAmmoMath matches 15 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 15, display: {Name: '"§6TRX-16 (5.56mm) <15>"'}}
execute if score @s gunAmmoMath matches 16 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 16, display: {Name: '"§6TRX-16 (5.56mm) <16>"'}}
execute if score @s gunAmmoMath matches 17 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 17, display: {Name: '"§6TRX-16 (5.56mm) <17>"'}}
execute if score @s gunAmmoMath matches 18 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 18, display: {Name: '"§6TRX-16 (5.56mm) <18>"'}}
execute if score @s gunAmmoMath matches 19 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 19, display: {Name: '"§6TRX-16 (5.56mm) <19>"'}}
execute if score @s gunAmmoMath matches 20 run replaceitem entity @s weapon carrot_on_a_stick{rifle: 1b, CustomModelData: 9002, ammo: 20, display: {Name: '"§6TRX-16 (5.56mm) <20>"'}}

execute if score @s gunAmmoMath matches 1.. run function arc86:rifle/fire
execute if score @s gunAmmoMath matches 0 run function arc86:rifle/empty
execute if score @s gunAmmoMath matches -1 run function arc86:rifle/reload
#																    ^ doesnt exist yet
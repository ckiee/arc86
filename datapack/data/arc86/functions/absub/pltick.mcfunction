execute unless score @s absubOldID = @s absubID run scoreboard players set @s absubTime 0
execute store result score @s absubOldID run scoreboard players get @s absubID

function arc86:absub/gentick
execute unless score @s absubID matches -1 run scoreboard players add @s absubTime 1

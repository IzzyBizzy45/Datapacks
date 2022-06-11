execute as @a if score @s death matches 1.. run tag @s add dead

execute if entity @a[tag=dead] run gamerule showDeathMessages false
execute if entity @a[tag=dead] run tellraw @a ["",{"selector":"@a[tag=dead]","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["",{"text":"Thanks ","italic":true,"color":"gray"},{"selector":"@a[tag=dead]"}]}},{"text":" ruined it for everyone by dying","color":"yellow"}]
execute if entity @a[tag=dead] run execute as @a if entity @s[tag=!dead] run kill @s[gamemode=!creative,gamemode=!spectator]
execute if entity @a[tag=dead] run gamerule showDeathMessages true
execute if entity @a[tag=dead] run scoreboard players add Total deathsTotal 1
execute if entity @a[tag=dead] run scoreboard players add @a[tag=dead] deathsTotal 1
execute if entity @a[tag=dead] run scoreboard players add @a[tag=dead] failures 1
execute if entity @a[tag=dead] run scoreboard players reset @a death
tag @a remove dead
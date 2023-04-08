#Auto spectate dead players and announce them out of the game
execute as @a if score @s izzyuhc_death matches 1.. run tag @s add dead
execute if entity @a[tag=dead] run playsound minecraft:entity.allay.death master @a[tag=!dead] ~ ~ ~ 0.7 0.8
execute if entity @a[tag=dead] run playsound minecraft:block.respawn_anchor.deplete master @a[tag=dead] ~ ~ ~ 0.7 0.9
execute if entity @a[tag=dead] run tellraw @a ["",{"selector":"@a[tag=dead]","bold":true,"color":"aqua"},{"text":" has been eliminated","color":"yellow"}]
execute if entity @a[tag=dead] run gamemode spectator @a[tag=dead]
execute if entity @a[tag=dead] run scoreboard players reset @a izzyuhc_death
tag @a remove dead

#ingame stuffs
execute if score #border izzyuhc_internal matches 1 run title @a actionbar ["",{"text":"\u26a0 ","color":"dark_red"},{"text":"Border Shrinking","color":"red"},{"text":" \u26a0","color":"dark_red"}]

#announce winner
execute store result score #pcount izzyuhc_internal if entity @a[gamemode=survival]
execute if score #count izzyuhc_internal matches 1 if score #gameover izzyuhc_internal matches 0 run tellraw @a ["",{"text":"Congrats to ","color":"gold"},{"selector":"@a[gamemode=survival]","color":"dark_aqua"},{"text":" for winning!","color":"gold"}]
execute if score #count izzyuhc_internal matches 1 run scoreboard players add #gameover izzyuhc_internal 1
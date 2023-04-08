clear @a
gamemode adventure @a
worldborder center 0 0
worldborder set 11
effect give @a resistance 999999 255 false
effect give @a regeneration 999999 255 false
effect give @a saturation 999999 255 false
execute in minecraft:overworld run spreadplayers 0 0 3 3 true @a
title @a times 3 20 3
gamerule naturalRegeneration false

scoreboard objectives add izzyuhc_death deathCount "Deaths"
scoreboard objectives add izzyuhc_internal dummy
scoreboard players set #border izzyuhc_internal 0

tellraw @a ["",{"text": "UHC Game ","color": "red"},{"text": "has now been prepped","color": "yellow"}]
tellraw @a ["",{"text":"Please have an operator run this ","color":"yellow"},{"text":"command","underlined":true,"color":"yellow","clickEvent":{"action":"suggest_command","value":"/function izzyuhc:start/start"}},{"text":" when ready","color":"yellow"}]

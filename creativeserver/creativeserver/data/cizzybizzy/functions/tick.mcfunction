scoreboard players enable @a gamemode
execute if entity @a[scores={gamemode=1..}] run function cizzybizzy:prompt
execute if entity @a[scores={gamemode=..-1}] run function cizzybizzy:prompt
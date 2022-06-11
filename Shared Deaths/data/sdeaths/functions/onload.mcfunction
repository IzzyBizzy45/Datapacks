scoreboard objectives add death deathCount "Deaths"
scoreboard objectives add deathsTotal dummy "Death Counts"
scoreboard objectives add failures dummy {"text":"Disappointments","color":"red"}

scoreboard objectives setdisplay belowName failures
scoreboard objectives setdisplay sidebar deathsTotal

tellraw @a ["",{"text": "Shared Deaths ","color": "red"},{"text": "have now been enabled","color": "yellow"}]
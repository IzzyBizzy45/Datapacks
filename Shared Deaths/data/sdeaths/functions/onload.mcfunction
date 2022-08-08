scoreboard objectives add sd_death deathCount "Deaths"
scoreboard objectives add sd_deathsTotal dummy "Death Counts"
scoreboard objectives add sd_failures dummy {"text":"Disappointments","color":"red"}

scoreboard objectives setdisplay belowName sd_failures
scoreboard objectives setdisplay sidebar sd_deathsTotal

tellraw @a ["",{"text": "Shared Deaths ","color": "red"},{"text": "have now been enabled","color": "yellow"}]
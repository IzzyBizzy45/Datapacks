scoreboard objectives add death deathCount "Deaths"
scoreboard objectives add deathsTotal dummy "Total Death Count"
scoreboard objectives add failures dummy {"text":"Disapointments","color":"red"}

scoreboard objectives setdisplay belowName failures
scoreboard objectives setdisplay sidebar deathsTotal
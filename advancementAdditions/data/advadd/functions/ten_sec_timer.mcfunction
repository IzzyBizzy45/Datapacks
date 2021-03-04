# Gives baby zombie variants the 'baby' tag if they are a baby (Used for the "Family Reunion" advancement)
execute as @e[type=#minecraft:zombies,tag=!advadd_baby] run tag @s[nbt={IsBaby:1b}] add advadd_baby

#Run again in 10 secs
schedule function advadd:ten_sec_timer 10s
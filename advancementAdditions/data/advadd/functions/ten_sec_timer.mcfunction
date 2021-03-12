scoreboard players operation previous current_time = time current_time
execute store result score time current_time run time query daytime
execute if score time current_time matches 0..200 run function advadd:increase_day

# First Night Advancement
execute if score time current_time matches 23000..23200 run advancement grant @a until advadd:statistics/the_first_night
scoreboard players operation previous current_time -= time current_time
execute unless score previous current_time matches ..13000 run advancement grant @a until advadd:statistics/the_first_night

# Gives baby zombie variants the 'baby' tag if they are a baby (Used for the "Family Reunion" advancement)
execute as @e[type=#minecraft:zombies,tag=!advadd_baby] run tag @s[nbt={IsBaby:1b}] add advadd_baby

# Run again in 10 secs
schedule function advadd:ten_sec_timer 10s
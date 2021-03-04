# All mobs with Wave set to 1 or higher get in_raid tag added for raid detection
execute as @e[type=#minecraft:raiders] store result score @s advadd_raidadder run data get entity @s Wave
tag @e[type=#minecraft:raiders,scores={advadd_raidadder=1..}] add in_raid

# For Redemption Arc
execute at @a as @e[type=pillager,distance=..5] unless entity @s[nbt={HandItems:[{id:"minecraft:crossbow"},{}]}] run advancement grant @a[distance=..5] only advadd:adventure/redemption_arc

#Checking Paintings
execute as @a[scores={painting_check=1..}] at @s run function advadd:check_paintings

#Just Keeps Going
scoreboard players add @a[scores={just_keep_going=1..}] just_keep_going 1
execute as @a[advancements={advadd:technical/just_keeps_going_start=true}] run function advadd:just_keeps_going
advancement grant @a[scores={bac_just_keep=3600..}] only advadd:animal/just_keeps_going
execute as @a[advancements={advadd:technical/just_keeps_going_fail=true}] run function advadd:just_keeps_going_fail

#Underwater Achivements
execute as @a at @s if block ~ ~ ~ #minecraft:underwater_blocks run scoreboard players add @a underwater_secs 1
execute as @a at @s unless block ~ ~ ~ #minecraft:underwater_blocks run scoreboard players set @s underwater_secs 0
execute as @a at @s if block ~ ~1.7 ~ #minecraft:non_underwater_blocks run scoreboard players set @s underwater_secs 0
advancement grant @a[scores={underwater_secs=120..}] only advadd:biomes/free_diver
advancement grant @a[scores={underwater_secs=1200..}] only advadd:biomes/sleep_with_the_fishes

# # Family Reunion
execute as @a at @s if entity @e[type=husk,tag=!advadd_baby,distance=..5] if entity @e[type=zombie_villager,tag=!advadd_baby,distance=..5] if entity @e[type=drowned,tag=!advadd_baby,distance=..5] if entity @e[type=zombified_piglin,tag=!advadd_baby,distance=..5] if entity @e[type=zombie,tag=!advadd_baby,distance=..5] if entity @e[type=husk,tag=advadd_baby,distance=..5] if entity @e[type=zombie_villager,tag=advadd_baby,distance=..5] if entity @e[type=drowned,tag=advadd_baby,distance=..5] if entity @e[type=zombified_piglin,tag=advadd_baby,distance=..5] if entity @e[type=zombie,tag=advadd_baby,distance=..5] run advancement grant @s only blazeandcave:combat/family_reunion

#Allow the function to run again after a second
schedule function advadd:second_timer 1s
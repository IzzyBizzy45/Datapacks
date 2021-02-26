# All mobs with Wave set to 1 or higher get in_raid tag added for raid detection
execute as @e[type=#minecraft:raiders] store result score @s advadd_raidadder run data get entity @s Wave
tag @e[type=#minecraft:raiders,scores={advadd_raidadder=1..}] add in_raid

# For Redemption Arc
execute at @a as @e[type=pillager,distance=..5] unless entity @s[nbt={HandItems:[{id:"minecraft:crossbow"},{}]}] run advancement grant @a[distance=..5] only advadd:adventure/redemption_arc

#Allow the function to run again after a second
schedule function advadd:second_timer 1s
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
advancement grant @a[scores={just_keep_going=3600..}] only advadd:animal/just_keeps_going
execute as @a[advancements={advadd:technical/just_keeps_going_fail=true}] run function advadd:just_keeps_going_fail

#Wizard's Breaky
scoreboard players remove @a[scores={advadd_wiz_break=1..,advadd_chorus=1..}] advadd_chorus 1
execute as @a[advancements={advadd:technical/a_wizards_breaky_start=true}] run function advadd:a_wizards_breaky_start
advancement grant @a[scores={advadd_wiz_break=64..}] only advadd:end/a_wizards_breaky
execute as @a[advancements={advadd:technical/a_wizards_breaky_fail=true}] run function advadd:a_wizards_breaky_fail
execute as @a[scores={advadd_chorus=0}] run function advadd:a_wizards_breaky_fail

#Dragon vs Dragon
execute as @a[advancements={advadd:technical/respawn_dragon=true}] run scoreboard players set @s drag_v_drag 1
execute as @a[scores={drag_v_drag=1}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:dragon_head"}]}] run scoreboard players set @s drag_v_drag 0
execute as @a[advancements={advadd:technical/kill_dragon=true},scores={drag_v_drag=1}] run advancement grant @s only advadd:end/dragon_vs_dragon

#Event Horizon
advancement revoke @a[predicate=!advadd:in_the_end] only advadd:technical/below_void
execute as @a[scores={advadd_health=1..},advancements={advadd:technical/below_void=true}] run function advadd:below_void
#Fail command in tick function
execute as @a[advancements={advadd:technical/return_from_void=true},scores={eventhorizon=1}] run advancement grant @s only advadd:end/event_horizon

#Inventory Checks
execute as @a at @s if block ~ ~ ~ minecraft:chest if block ~ ~ ~ minecraft:chest{Items:[{Slot:0b,id:"minecraft:cobblestone",Count:64b},{Slot:1b,id:"minecraft:cobblestone",Count:64b},{Slot:2b,id:"minecraft:cobblestone",Count:64b},{Slot:3b,id:"minecraft:cobblestone",Count:64b},{Slot:4b,id:"minecraft:cobblestone",Count:64b},{Slot:5b,id:"minecraft:cobblestone",Count:64b},{Slot:6b,id:"minecraft:cobblestone",Count:64b},{Slot:7b,id:"minecraft:cobblestone",Count:64b},{Slot:8b,id:"minecraft:cobblestone",Count:64b},{Slot:9b,id:"minecraft:cobblestone",Count:64b},{Slot:10b,id:"minecraft:cobblestone",Count:64b},{Slot:11b,id:"minecraft:cobblestone",Count:64b},{Slot:12b,id:"minecraft:cobblestone",Count:64b},{Slot:13b,id:"minecraft:cobblestone",Count:64b},{Slot:14b,id:"minecraft:cobblestone",Count:64b},{Slot:15b,id:"minecraft:cobblestone",Count:64b},{Slot:16b,id:"minecraft:cobblestone",Count:64b},{Slot:17b,id:"minecraft:cobblestone",Count:64b},{Slot:18b,id:"minecraft:cobblestone",Count:64b},{Slot:19b,id:"minecraft:cobblestone",Count:64b},{Slot:20b,id:"minecraft:cobblestone",Count:64b},{Slot:21b,id:"minecraft:cobblestone",Count:64b},{Slot:22b,id:"minecraft:cobblestone",Count:64b},{Slot:23b,id:"minecraft:cobblestone",Count:64b},{Slot:24b,id:"minecraft:cobblestone",Count:64b},{Slot:25b,id:"minecraft:cobblestone",Count:64b},{Slot:26b,id:"minecraft:cobblestone",Count:64b}]} run advancement grant @s only advadd:mining/chestful_of_cobblestone
execute as @a[nbt={Inventory:[{Slot:8b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}}]}] if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:1b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:2b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:3b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:4b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:5b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:6b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{Slot:7b,id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}}]}] run advancement grant @s only advadd:weaponry/artillery
execute as @a[nbt={Inventory:[{Slot:24b,id:"minecraft:firework_rocket",Count:64b}]}] if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:firework_rocket",Count:64b},{Slot:1b,id:"minecraft:firework_rocket",Count:64b},{Slot:2b,id:"minecraft:firework_rocket",Count:64b},{Slot:3b,id:"minecraft:firework_rocket",Count:64b},{Slot:4b,id:"minecraft:firework_rocket",Count:64b},{Slot:5b,id:"minecraft:firework_rocket",Count:64b},{Slot:6b,id:"minecraft:firework_rocket",Count:64b},{Slot:7b,id:"minecraft:firework_rocket",Count:64b},{Slot:8b,id:"minecraft:firework_rocket",Count:64b},{Slot:9b,id:"minecraft:firework_rocket",Count:64b},{Slot:10b,id:"minecraft:firework_rocket",Count:64b},{Slot:11b,id:"minecraft:firework_rocket",Count:64b},{Slot:12b,id:"minecraft:firework_rocket",Count:64b},{Slot:13b,id:"minecraft:firework_rocket",Count:64b},{Slot:14b,id:"minecraft:firework_rocket",Count:64b},{Slot:15b,id:"minecraft:firework_rocket",Count:64b},{Slot:16b,id:"minecraft:firework_rocket",Count:64b},{Slot:17b,id:"minecraft:firework_rocket",Count:64b},{Slot:18b,id:"minecraft:firework_rocket",Count:64b},{Slot:19b,id:"minecraft:firework_rocket",Count:64b},{Slot:20b,id:"minecraft:firework_rocket",Count:64b},{Slot:21b,id:"minecraft:firework_rocket",Count:64b},{Slot:22b,id:"minecraft:firework_rocket",Count:64b},{Slot:23b,id:"minecraft:firework_rocket",Count:64b},{Slot:25b,id:"minecraft:firework_rocket",Count:64b},{Slot:26b,id:"minecraft:firework_rocket",Count:64b},{Slot:27b,id:"minecraft:firework_rocket",Count:64b},{Slot:28b,id:"minecraft:firework_rocket",Count:64b},{Slot:29b,id:"minecraft:firework_rocket",Count:64b},{Slot:30b,id:"minecraft:firework_rocket",Count:64b},{Slot:31b,id:"minecraft:firework_rocket",Count:64b},{Slot:32b,id:"minecraft:firework_rocket",Count:64b},{Slot:33b,id:"minecraft:firework_rocket",Count:64b},{Slot:34b,id:"minecraft:firework_rocket",Count:64b},{Slot:35b,id:"minecraft:firework_rocket",Count:64b},{Slot:-106b,id:"minecraft:firework_rocket",Count:64b}]}] run advancement grant @s only advadd:end/rocketman
execute as @a[nbt={Inventory:[{Slot:24b,id:"minecraft:totem_of_undying",Count:1b}]}] if entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:totem_of_undying",Count:1b},{Slot:1b,id:"minecraft:totem_of_undying",Count:1b},{Slot:2b,id:"minecraft:totem_of_undying",Count:1b},{Slot:3b,id:"minecraft:totem_of_undying",Count:1b},{Slot:4b,id:"minecraft:totem_of_undying",Count:1b},{Slot:5b,id:"minecraft:totem_of_undying",Count:1b},{Slot:6b,id:"minecraft:totem_of_undying",Count:1b},{Slot:7b,id:"minecraft:totem_of_undying",Count:1b},{Slot:8b,id:"minecraft:totem_of_undying",Count:1b},{Slot:9b,id:"minecraft:totem_of_undying",Count:1b},{Slot:10b,id:"minecraft:totem_of_undying",Count:1b},{Slot:11b,id:"minecraft:totem_of_undying",Count:1b},{Slot:12b,id:"minecraft:totem_of_undying",Count:1b},{Slot:13b,id:"minecraft:totem_of_undying",Count:1b},{Slot:14b,id:"minecraft:totem_of_undying",Count:1b},{Slot:15b,id:"minecraft:totem_of_undying",Count:1b},{Slot:16b,id:"minecraft:totem_of_undying",Count:1b},{Slot:17b,id:"minecraft:totem_of_undying",Count:1b},{Slot:18b,id:"minecraft:totem_of_undying",Count:1b},{Slot:19b,id:"minecraft:totem_of_undying",Count:1b},{Slot:20b,id:"minecraft:totem_of_undying",Count:1b},{Slot:21b,id:"minecraft:totem_of_undying",Count:1b},{Slot:22b,id:"minecraft:totem_of_undying",Count:1b},{Slot:23b,id:"minecraft:totem_of_undying",Count:1b},{Slot:25b,id:"minecraft:totem_of_undying",Count:1b},{Slot:26b,id:"minecraft:totem_of_undying",Count:1b},{Slot:27b,id:"minecraft:totem_of_undying",Count:1b},{Slot:28b,id:"minecraft:totem_of_undying",Count:1b},{Slot:29b,id:"minecraft:totem_of_undying",Count:1b},{Slot:30b,id:"minecraft:totem_of_undying",Count:1b},{Slot:31b,id:"minecraft:totem_of_undying",Count:1b},{Slot:32b,id:"minecraft:totem_of_undying",Count:1b},{Slot:33b,id:"minecraft:totem_of_undying",Count:1b},{Slot:34b,id:"minecraft:totem_of_undying",Count:1b},{Slot:35b,id:"minecraft:totem_of_undying",Count:1b},{Slot:-106b,id:"minecraft:totem_of_undying",Count:1b}]}] run advancement grant @s only advadd:challenges/immortal

#Full Stomach
advancement grant @a[nbt={foodLevel:20,foodSaturationLevel:20.0f}] only advadd:farming/full_stomach

#Castaway
execute as @a[advancements={advadd:technical/castaway_start=true}] run scoreboard players add @s advadd_castaway 1
advancement grant @a[scores={advadd_castaway=3600..}] only advadd:farming/castaway
execute as @a[advancements={advadd:technical/castaway_fail=true}] run function advadd:castaway_fail

#Underwater Achivements
execute as @a at @s if block ~ ~ ~ #minecraft:underwater_blocks run scoreboard players add @a underwater_secs 1
execute as @a at @s unless block ~ ~ ~ #minecraft:underwater_blocks run scoreboard players set @s underwater_secs 0
execute as @a at @s if block ~ ~1.7 ~ #minecraft:non_underwater_blocks run scoreboard players set @s underwater_secs 0
advancement grant @a[scores={underwater_secs=120..}] only advadd:biomes/free_diver
advancement grant @a[scores={underwater_secs=1200..}] only advadd:biomes/sleep_with_the_fishes

#Family Reunion
execute as @a at @s if entity @e[type=husk,tag=!advadd_baby,distance=..5] if entity @e[type=zombie_villager,tag=!advadd_baby,distance=..5] if entity @e[type=drowned,tag=!advadd_baby,distance=..5] if entity @e[type=zombified_piglin,tag=!advadd_baby,distance=..5] if entity @e[type=zombie,tag=!advadd_baby,distance=..5] if entity @e[type=husk,tag=advadd_baby,distance=..5] if entity @e[type=zombie_villager,tag=advadd_baby,distance=..5] if entity @e[type=drowned,tag=advadd_baby,distance=..5] if entity @e[type=zombified_piglin,tag=advadd_baby,distance=..5] if entity @e[type=zombie,tag=advadd_baby,distance=..5] run advancement grant @s only advadd:combat/family_reunion

#Allow the function to run again after a second
schedule function advadd:second_timer 1s
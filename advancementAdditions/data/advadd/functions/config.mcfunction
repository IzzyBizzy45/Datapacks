tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":"false","text":" ","extra":[{"color":"yellow","bold":"false","translate":"Blaze"},{"color":"gray","bold":"false","translate":"and"},{"color":"aqua","bold":"false","translate":"Cave"},{"color":"gray","bold":"false","translate":"'s Advancements Pack Config"}]}

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}

# Welcome Message
execute if score intro_msg bac_settings matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/intro_msg_off"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}," ",{"translate":"Welcome Message currently enabled"}]
execute unless score intro_msg bac_settings matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/intro_msg_on"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"translate":"Welcome Message currently disabled"}]
# Item Rewards
execute if score reward bac_settings matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/item_rewards_off"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}," ",{"translate":"Item Rewards currently enabled"}]
execute unless score reward bac_settings matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/item_rewards_on"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"translate":"Item Rewards currently disabled"}]
# Experience Rewards
execute if score exp bac_settings matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/exp_rewards_off"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}," ",{"translate":"Experience Rewards currently enabled"}]
execute unless score exp bac_settings matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/exp_rewards_on"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"translate":"Experience Rewards currently disabled"}]
# Trophies
execute if score trophy bac_settings matches 1 run tellraw @s ["",{"text":"[ ✔ ]","color":"green","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/trophies_off"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}," ",{"translate":"Trophies currently enabled"}]
execute unless score trophy bac_settings matches 1 run tellraw @s ["",{"text":"[ ❌ ]","color":"red","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/trophies_on"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"translate":"Trophies currently disabled"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
# Scoreboard Tab
tellraw @s ["",{"text":"[ »» ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay list bac_advancements"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"translate":"Display scoreboard on tab list"}]
tellraw @s ["",{"text":"[ »» ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay list"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}," ",{"translate":"Clear scoreboard from tab list"}]

# Scoreboard sidebar
tellraw @s ["",{"text":"[ »» ]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar bac_advancements"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to enable","color":"gold"}]}}," ",{"translate":"Display scoreboard on sidebar"}]
tellraw @s ["",{"text":"[ »» ]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard objectives setdisplay sidebar"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to disable","color":"gold"}]}}," ",{"translate":"Clear scoreboard from sidebar"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}
# Update Scoreboard
tellraw @s ["",{"text":"[ »» ]","color":"gold","clickEvent":{"action":"run_command","value":"/function bc_rewards:update_score"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Update scoreboard"}]
# Trophy granting
tellraw @s ["",{"text":"[ »» ]","color":"gold","clickEvent":{"action":"run_command","value":"/function blazeandcave:config/trophies_ru_sure"},"hoverEvent":{"action":"show_text","contents":["",{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Grant trophies"}]

tellraw @s {"text":"                                                                                ","color":"dark_gray","strikethrough":true}



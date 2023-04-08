playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.75 1
title @a title {"text":"GO!","color":"green"}
tellraw @a ["",{"text":"Every 1 Minecraft ","color":"yellow"},{"text":"Day","color":"yellow","hoverEvent":{"action":"show_text","contents":{"text":"20 minutes"}}},{"text":" the world border will shrink by 500 blocks until it reaches 50x50","color":"yellow"}]
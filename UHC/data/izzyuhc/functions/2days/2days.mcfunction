playsound minecraft:entity.warden.agitated master @a ~ ~ ~ 0.75 1
scoreboard players set #border izzyuhc_internal 1
tellraw @a {"text":"\u26a0 Border is Shrinking by 500 blocks over the next 60 seconds","color":"red"}
worldborder set 1001 60
schedule function izzyuhc:2days/2daysstop 60s
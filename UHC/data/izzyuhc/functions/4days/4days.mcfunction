playsound minecraft:entity.warden.agitated master @a ~ ~ ~ 0.75 1
scoreboard players set #border izzyuhc_internal 1
tellraw @a {"text":"\u26a0 Border is Shrinking by 450 blocks over the next 60 seconds","color":"red"}
worldborder set 101 60
schedule function izzyuhc:4days/4daysstop 60s
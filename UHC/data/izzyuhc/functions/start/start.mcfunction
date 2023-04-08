worldborder warning distance 50
worldborder set 2001
effect give @a darkness 20 2

gamemode survival @a[gamemode=adventure]
execute in minecraft:overworld run spreadplayers 0 0 300 1800 true @a
effect clear @a regeneration
effect clear @a resistance
effect clear @a saturation

effect give @a slowness 31 5 true
effect give @a jump_boost 31 200 true

tellraw @a {"text":"Game will start in 30 seconds...","color":"yellow"}

time set 0t

schedule function izzyuhc:start/3ready 27s
schedule function izzyuhc:1day/1day 1d
schedule function izzyuhc:2days/2days 2d
schedule function izzyuhc:3days/3days 3d
schedule function izzyuhc:4days/4days 4d
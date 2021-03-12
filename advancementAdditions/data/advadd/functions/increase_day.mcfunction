# At the beginning of each day:
scoreboard players add @a day_count 1

advancement grant @a[scores={day_count=100..}] only advadd:statistics/passing_the_time
advancement grant @a[scores={day_count=365..}] only advadd:statistics/happy_new_year
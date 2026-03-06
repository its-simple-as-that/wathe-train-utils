schedule clear wathe_choochoo:game_start_count_down
schedule clear wathe_choochoo:trainstarter_kick
tag @a[tag=Conductor] remove Conductor
scoreboard players set GameQueueing wathe_train_utils 0
team leave @a
execute at @n[tag=trainHorn,distance=..100,type=marker] run player .trainstarter spawn at ~ ~-1 ~ facing 0 0 in overworld in creative

schedule function wathe_choochoo:trainstarter_kick 3t

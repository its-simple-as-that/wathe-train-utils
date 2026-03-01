title @a title {"text":"Game queue cancelled","color":"red"}
playsound wathe:ui.piano_stinger ambient @a ~ ~ ~ 1 0.3 1
schedule clear wathe_choochoo:game_start_count_down
scoreboard players set GameQueueing wathe_train_utils 0
clear @a[tag=Conductor] goat_horn[custom_data={trainStart:true}]
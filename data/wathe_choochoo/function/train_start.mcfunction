#execute store result score randomScene wathe_train_utils run random value 1..3
execute store result storage wathe_choochoo:wathe_train_details data.time int 1 run scoreboard players get timeDuration wathe_train_utils
execute if score isModded wathe_train_utils matches 1 run function wathe_choochoo:train_start_modded with storage wathe_choochoo:wathe_train_details data
execute if score isModded wathe_train_utils matches 0 run function wathe_choochoo:train_start_vanilla with storage wathe_choochoo:wathe_train_details data

scoreboard objectives add wathe_train_utils dummy "Train Utilities"
scoreboard players set isModded wathe_train_utils 0
scoreboard players set timeDuration wathe_train_utils 10
data modify storage wathe_choochoo:wathe_train_details data set value {}
schedule clear wathe_choochoo:train_start
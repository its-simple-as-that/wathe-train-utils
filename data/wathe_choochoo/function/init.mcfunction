data modify storage wathe_choochoo:wathe_train_details data set value {}
team add TrainConductor "Train Conductor"
team modify TrainConductor color gold
team modify TrainConductor prefix {"text":"[Conductor] ","color": "#F88822"}

scoreboard objectives add wathe_train_utils dummy "Train Utilities"

scoreboard players set isModded wathe_train_utils 0
scoreboard players set timeDuration wathe_train_utils 10
scoreboard players set GameQueueing wathe_train_utils 0
scoreboard players set ConductorNumber wathe_train_utils 0
scoreboard players set MaxConductor wathe_train_utils 3

schedule clear wathe_choochoo:train_start
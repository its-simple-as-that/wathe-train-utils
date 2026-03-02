data modify storage wathe_choochoo:wathe_train_details data set value {}
team add TrainConductor "Train Conductor"
team modify TrainConductor color gold
team modify TrainConductor prefix {"text":"[Conductor] ","color": "#F88822"}
team add TrainWatcher "Train Watcher"
team modify TrainWatcher color gray
team modify TrainWatcher suffix " 👁"

scoreboard objectives add wathe_train_utils dummy "Train Utilities"

execute if score GameQueueing wathe_train_utils matches 1 run function wathe_choochoo:cancel_game_queue

execute unless score isModded wathe_train_utils matches 1 run scoreboard players set isModded wathe_train_utils 0
execute unless score timeDuration wathe_train_utils matches 1.. run scoreboard players set timeDuration wathe_train_utils 10
scoreboard players set GameQueueing wathe_train_utils 0
scoreboard players set ConductorNumber wathe_train_utils 0
execute unless score MaxConductor wathe_train_utils matches 1.. run scoreboard players set MaxConductor wathe_train_utils 3
execute unless score QueueDuration wathe_train_utils matches 1.. run scoreboard players set QueueDuration wathe_train_utils 30
execute unless score BotCount wathe_train_utils matches 1.. run scoreboard players set BotCount wathe_train_utils 6
data modify storage wathe_choochoo:wathe_train_details data set value {}
team add TrainConductor "Train Conductor"
team modify TrainConductor color gold
team modify TrainConductor prefix {"text":"[Conductor] ","color": "#F88822"}
team add TrainWatcher "Train Watcher"
team modify TrainWatcher color gray
team modify TrainWatcher suffix " 👁"

scoreboard objectives add wathe_train_utils dummy "Train Utilities"

execute if score GameQueueing wathe_train_utils matches 1 run function wathe_choochoo:cancel_game_queue

scoreboard players set GameQueueing wathe_train_utils 0
scoreboard players set ConductorNumber wathe_train_utils 0
execute unless score MaxConductor wathe_train_utils matches 1.. run scoreboard players set MaxConductor wathe_train_utils 3
execute unless score SetUpComplete wathe_train_utils matches 1.. run scoreboard players set SetUpComplete wathe_train_utils 0
execute unless score QueueDuration wathe_train_utils matches 1.. run scoreboard players set QueueDuration wathe_train_utils 30
execute unless score BotCount wathe_train_utils matches 1.. run scoreboard players set BotCount wathe_train_utils 6
execute if score SetUpComplete wathe_train_utils matches 1 run tellraw @a[tag=Conductor] [{"text": "Set-up incomplete! Please create the following (optional) stations: \n"},{"text": "[Opt-Out Station]","clickEvent":{"action": "run_command","value": "/function wathe_choochoo:create_waiver_station"}},{"text": "[Opt-In Station]","clickEvent":{"action": "run_command","value": "/function wathe_choochoo:create_signing_station"}},{"text": "[Conductor Station]","clickEvent":{"action": "run_command","value": "/function wathe_choochoo:create_conductor_station"}},{"text": "[Teleporter Station]","clickEvent":{"action": "run_command","value": "/function wathe_choochoo:create_teleporter_station"}},{"text": "\n[I am done!]","clickEvent":{"action": "run_command","value": "/scoreboard players set SetUpComplete wathe_train_utils 2"},"color": "aqua"}]
execute if score SetUpComplete wathe_train_utils matches 0 run tellraw @a[tag=Conductor] [{"text": "Set-up not begun! Please create the following mandatory station [This will not be accessible to players]: \n"},{"text": "[Give Operator]","hoverEvent":{"action": "show_text","contents":"This is a necessary step for this datapack to\nwork, the bot requires op to start games."} ,"clickEvent":{"action": "suggest_command","value": "/op .trainstarter"}},{"text": "[TrainStarter Station]","clickEvent":{"action":"run_command","value": "/function wathe_choochoo:create_trainstarter_station"}}]
advancement revoke @s only wathe_choochoo:use_horn
execute if score GameQueueing wathe_train_utils matches 1 run return run title @s subtitle "A Game is already Queued"
scoreboard players set GameQueueing wathe_train_utils 0
schedule clear wathe_choochoo:game_start_count_down
title @a title {"text":"Train Starting Soon!","color":"gold"}
title @a subtitle [{"text":"Started by ","color":"yellow"}, {"selector":"@s", "color": "gold"}]
scoreboard players set GameQueueing wathe_train_utils 1

scoreboard players operation CountDown wathe_train_utils = QueueDuration wathe_train_utils
schedule function wathe_choochoo:game_start_count_down 1s
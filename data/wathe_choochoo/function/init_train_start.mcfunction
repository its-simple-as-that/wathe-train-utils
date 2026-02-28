advancement revoke @s only wathe_choochoo:use_horn
execute if score GameQueueing wathe_train_utils matches 1 run return run title @s actionbar "A Game is already Queued"
scoreboard players set GameQueueing wathe_train_utils 0
schedule clear wathe_choochoo:train_start
title @a title {"text":"Train Starting Soon!","color":"gold"}
title @a subtitle [{"text":"Started by ","color":"yellow"}, {"selector":"@s", "color": "gold"}]
scoreboard players set GameQueueing wathe_train_utils 1
schedule function wathe_choochoo:train_start 20s
tag @a remove Conductor
schedule clear wathe_choochoo:train_start
title @a title {"text":"Train Starting Soon!","color":"gold"}
title @a subtitle [{"text":"Started by ","color":"yellow"}, {"selector":"@s", "color": "gold"}]
tag @s add Conductor
schedule function wathe_choochoo:train_start 20s
advancement revoke @s only wathe_choochoo:use_horn
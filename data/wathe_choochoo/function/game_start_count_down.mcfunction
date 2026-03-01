execute if score CountDown wathe_train_utils matches 11.. run title @a actionbar [{"text":"Game starting in ","color": "gold"},{"score":{"name": "CountDown", "objective": "wathe_train_utils"}}," seconds"]
execute if score CountDown wathe_train_utils matches 2..10 run title @a actionbar [{"text":"Game starting in ", "color": "red"},{"score":{"name": "CountDown", "objective": "wathe_train_utils"}}," seconds. Move quick!"]
execute if score CountDown wathe_train_utils matches 1 run title @a actionbar [{"text":"Game starting in ", "color": "red"},{"score":{"name": "CountDown", "objective": "wathe_train_utils"}}," second. Here we go!"]

scoreboard players remove CountDown wathe_train_utils 1
execute if score CountDown wathe_train_utils matches ..-1 run return run function wathe_choochoo:train_start
schedule function wathe_choochoo:game_start_count_down 1s
advancement revoke @s only wathe_choochoo:interact_opt_out
execute if entity @s[tag=trainWatcher] run return 0
playsound wathe:ambient.blackout ambient @s ~ ~ ~ 0.1 0.4
title @s actionbar [{"text":"You are given an unsigned waiver...","color":"dark_gray"}]
title @s subtitle [{"text":"You have opted out of riding the train.","color":"gray"}]
title @s title ""
function wathe_choochoo:give_waiver
tag @s add trainWatcher
team join TrainWatcher
clear @s goat_horn
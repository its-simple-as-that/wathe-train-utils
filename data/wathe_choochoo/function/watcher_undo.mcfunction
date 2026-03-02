advancement revoke @s only wathe_choochoo:interact_opt_in
execute unless entity @s[tag=trainWatcher] run return 0
playsound minecraft:entity.villager.work_cartographer ambient @s
title @s actionbar [{"text":"You have filled in your waiver...","color":"dark_red"}]
title @s subtitle [{"text":"You have opted back in.","color":"gold"}]
title @s title ""
clear @s paper[custom_data={optOut:true}]
tag @s remove trainWatcher
team leave @s
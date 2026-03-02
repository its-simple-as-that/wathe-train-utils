execute at @s run tp @a[tag=!trainWatcher] ~ ~ ~
clear @s goat_horn[custom_data={teleportAll:true}] 1
advancement revoke @s only wathe_choochoo:use_summon_horn
playsound wathe:item.crowbar.pry ambient @a[tag=!trainWatcher] ~ ~ ~ 0.3 2
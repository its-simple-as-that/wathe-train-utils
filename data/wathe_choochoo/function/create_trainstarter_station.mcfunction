execute at @s align xz positioned ~0.5 ~1 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["trainHorn"]}
execute align xz run setblock ~ ~1 ~ wathe:horn
playsound wathe:block.door.toggle ambient @s ~ ~ ~ 1 0.3 1
scoreboard players set SetUpComplete wathe_train_utils 1
execute if entity @s[tag=Conductor] run return 0

scoreboard players set ConductorNumber wathe_train_utils 0

execute as @a[tag=Conductor] run scoreboard players add ConductorNumber wathe_train_utils 1

execute if score ConductorNumber wathe_train_utils < MaxConductor wathe_train_utils run function wathe_choochoo:give_conductor_horn
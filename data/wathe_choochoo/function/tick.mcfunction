execute as @a if items entity @s hotbar.* goat_horn[custom_data={trainStart:true}] run tag @s add Conductor
scoreboard players set ConductorNumber wathe_train_utils 0

execute as @a[tag=Conductor] run scoreboard players add ConductorNumber wathe_train_utils 1
execute if score ConductorNumber wathe_train_utils > MaxConductor wathe_train_utils run clear @r[tag=Conductor] goat_horn[custom_data={trainStart:true}]
execute as @a[tag=Conductor] unless items entity @s hotbar.* goat_horn[custom_data={trainStart:true}] run tag @s remove Conductor

team join TrainConductor @a[tag=Conductor]
team leave @a[team=TrainConductor,tag=!Conductor]
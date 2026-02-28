#execute if score randomScene wathe_train_utils matches 1 run wathe:start harpymodloader:modded wathe:harpy_express_night
#execute if score randomScene wathe_train_utils matches 2 run wathe:start harpymodloader:modded wathe:harpy_express_day
#execute if score randomScene wathe_train_utils matches 3 run wathe:start harpymodloader:modded wathe:harpy_express_sundown
$execute as @p[tag=Conductor] run wathe:start harpymodloader:modded wathe:generic $(time)
tag @p[tag=Conductor] remove Conductor
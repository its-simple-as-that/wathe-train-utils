advancement revoke @s only wathe_choochoo:interact_teleporter
execute unless items entity @s hotbar.* goat_horn[custom_data={teleportAll:true}] run function wathe_choochoo:give_teleport_horn
title @s actionbar {"text": "You grab the Transporter's Horn..", "color": "gold"}
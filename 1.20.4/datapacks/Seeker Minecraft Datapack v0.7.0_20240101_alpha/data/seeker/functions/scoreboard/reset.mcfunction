##
 # reset.mcfunction
 # 
 #
 # Created by MegaKylin.
##

scoreboard objectives add current_block_clone_count dummy
scoreboard objectives add total_block_clone_count dummy {"text": "Total Block Clone Count", "color": "gold"}
scoreboard objectives add items_value dummy
scoreboard objectives add items_damage dummy
scoreboard objectives add items_value_nugget_ratio dummy

scoreboard objectives setdisplay sidebar total_block_clone_count

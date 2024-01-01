##
 # total_block_clone_number.mcfunction
 # 
 #
 # Created by MegaKylin.
##

scoreboard objectives add total_block_clone_number dummy {"text": "Total Block Clone Number", "color": "gold"}
scoreboard objectives modify total_block_clone_number rendertype integer
scoreboard objectives setdisplay sidebar total_block_clone_number

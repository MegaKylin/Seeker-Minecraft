##
 # current_block_clone_number.mcfunction
 # 
 #
 # Created by MegaKylin.
##

scoreboard objectives add current_block_clone_number dummy {"text": "Current Block Clone Number", "color": "gold"}
scoreboard objectives modify current_block_clone_number rendertype integer
scoreboard objectives setdisplay sidebar current_block_clone_number

##
 # teleport_range_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s if block ~ 129 ~ minecraft:command_block run tag @s add Teleport_Range
execute as @s at @s unless block ~ 129 ~ minecraft:command_block run tag @s remove Teleport_Range

##
 # teleport_area_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s if block ~ 129 ~ minecraft:command_block run tag @s add teleport_area
execute as @s at @s unless block ~ 129 ~ minecraft:command_block run tag @s remove teleport_area

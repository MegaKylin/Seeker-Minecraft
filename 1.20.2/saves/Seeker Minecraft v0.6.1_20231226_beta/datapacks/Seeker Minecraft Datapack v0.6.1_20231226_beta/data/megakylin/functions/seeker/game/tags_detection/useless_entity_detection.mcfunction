##
 # useless_entity_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s[type=minecraft:item] at @s if block ~ 130 ~ minecraft:bedrock run tag @s[y=-64,dy=191] add Useless_Entity

execute as @s[tag=Overworld] at @s unless block ~ ~193 ~ #megakylin:placeholder_blocks run tag @s[y=-64,dy=191] add Useless_Entity
execute as @s[tag=NE] at @s unless block ~ ~129 ~ #megakylin:placeholder_blocks run tag @s[y=0,dy=127] add Useless_Entity

execute as @s[type=!item,tag=Overworld] at @s unless block ~ ~-191 ~ #megakylin:placeholder_blocks run tag @s[y=128,dy=191] add Useless_Entity
execute as @s[type=!item,tag=NE] at @s unless block ~ ~-127 ~ #megakylin:placeholder_blocks run tag @s[y=128,dy=127] add Useless_Entity

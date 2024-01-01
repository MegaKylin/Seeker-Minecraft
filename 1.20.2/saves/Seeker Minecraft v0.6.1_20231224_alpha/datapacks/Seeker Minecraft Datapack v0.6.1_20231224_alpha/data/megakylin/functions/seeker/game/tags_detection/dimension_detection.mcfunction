##
 # dimension_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

# pre remove tag
execute as @s at @s if block ~ ~ ~ minecraft:nether_portal run tag @s remove Overworld
execute as @s at @s if block ~ ~ ~ minecraft:nether_portal run tag @s remove NE
execute as @s at @s if block ~ ~ ~ minecraft:end_portal run tag @s remove Overworld
execute as @s at @s if block ~ ~ ~ minecraft:end_portal run tag @s remove NE

# force remove tag
execute as @s at @s if block ~ -64 ~ minecraft:bedrock run tag @s remove NE
execute as @s at @s if block ~ 127 ~ minecraft:bedrock run tag @s remove Overworld
execute as @s at @s if block 42 0 0 minecraft:obsidian if block -42 0 -1 minecraft:obsidian run tag @s remove Overworld

# add tag
execute as @s at @s unless block ~ ~ ~ minecraft:nether_portal unless block ~ ~ ~ minecraft:end_portal if block ~ -64 ~ minecraft:bedrock run tag @s add Overworld
execute as @s at @s unless block ~ ~ ~ minecraft:nether_portal unless block ~ ~ ~ minecraft:end_portal if block ~ 127 ~ minecraft:bedrock run tag @s add NE
execute as @s at @s unless block ~ ~ ~ minecraft:nether_portal unless block ~ ~ ~ minecraft:end_portal if block 42 0 0 minecraft:obsidian if block -42 0 -1 minecraft:obsidian run tag @s add NE

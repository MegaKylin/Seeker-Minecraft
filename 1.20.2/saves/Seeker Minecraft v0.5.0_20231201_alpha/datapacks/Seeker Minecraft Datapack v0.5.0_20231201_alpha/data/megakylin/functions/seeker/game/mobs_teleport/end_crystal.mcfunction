##
 # end_crystal.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run summon minecraft:end_crystal ~ ~128 ~
execute as @s at @s unless block ~ 127 ~ minecraft:bedrock if block ~ ~127 ~ minecraft:bedrock run kill @s

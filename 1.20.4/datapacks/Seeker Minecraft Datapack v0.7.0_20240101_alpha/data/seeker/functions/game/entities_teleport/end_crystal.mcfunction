##
 # end_crystal.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> teleport up to game area
# end crystal teleportation
execute as @s at @s if block ~ ~127 ~ minecraft:bedrock run summon minecraft:end_crystal ~ ~128 ~
execute as @s at @s if block ~ ~127 ~ minecraft:bedrock run kill @s

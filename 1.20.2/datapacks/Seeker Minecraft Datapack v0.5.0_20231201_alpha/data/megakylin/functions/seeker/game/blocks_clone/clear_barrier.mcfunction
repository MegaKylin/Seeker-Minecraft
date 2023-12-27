##
 # clear_barrier.mcfunction
 # 
 #
 # Created by MegaKylin.
##

# other entities clear barrier
execute as @s at @s if block ~ ~ ~ minecraft:air if block ~ 129 ~ minecraft:bedrock run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:barrier

##
 # flare_1.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 normal
execute as @s at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0.1 20 normal
execute as @s at @s run playsound minecraft:entity.firework_rocket.large_blast neutral @a ~ ~ ~ 1 1 1

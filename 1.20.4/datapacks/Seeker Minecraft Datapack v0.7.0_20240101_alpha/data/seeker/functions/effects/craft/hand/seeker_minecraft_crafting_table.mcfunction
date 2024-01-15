##
 # seeker_minecraft_crafting_table.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 normal
execute as @s at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 20 normal
execute as @s at @s run playsound minecraft:entity.firework_rocket.large_blast neutral @a ~ ~ ~ 1 1 1

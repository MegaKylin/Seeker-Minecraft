##
 # cool.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 20 normal
execute as @s at @s run playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 1 1 1

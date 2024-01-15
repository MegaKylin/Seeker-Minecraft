##
 # iron_nugget.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s if score @s items_value matches 1.. run give @p minecraft:iron_nugget 1
execute as @s if score @s items_value matches 1.. run scoreboard players remove @s items_value 1
execute as @s if score @s items_value matches 1.. run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/give/iron_nugget

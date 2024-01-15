##
 # iron_ingot.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s if score @s items_value matches 9.. run give @p minecraft:iron_ingot 1
execute as @s if score @s items_value matches 9.. run scoreboard players remove @s items_value 9
execute as @s if score @s items_value matches 9.. run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/give/iron_ingot

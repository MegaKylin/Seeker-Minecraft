##
 # give_iron.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s if score @s items_value matches 9.. run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/give/iron_ingot

execute as @s if score @s items_value matches 1.. run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/give/iron_nugget

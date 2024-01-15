##
 # range_4.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> create barrier layer(hold fluid)
execute as @s at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier

#> create command block layer(teleport range detection)
execute as @s at @s run fill ~-3 129 ~-3 ~4 129 ~3 minecraft:bedrock
execute as @s at @s run fill ~-5 129 ~-5 ~5 129 ~5 minecraft:command_block[facing=up] replace #seeker:non_bedrock_blocks

#> create bedrock layer(teleport detection)
execute as @s at @s run fill ~-4 130 ~-4 ~4 130 ~4 minecraft:bedrock

#> move blocks
execute as @s at @s store result score @s current_block_clone_count run clone ~-4 ~-132 ~-4 ~4 ~-124 ~4 ~-4 ~-4 ~-4 filtered #seeker:non_placeholder_blocks move
execute as @s if score @s current_block_clone_count matches 1.. run function seeker:game/blocks_clone/the_end/range_4/clone_operations

#> clear barrier
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:barrier

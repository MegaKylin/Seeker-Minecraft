##
 # range_8.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> create barrier layer(hold fluid)
execute as @s at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier

#> create command block layer(teleport range detection)
execute as @s at @s run fill ~-7 129 ~-7 ~7 129 ~7 minecraft:bedrock
execute as @s at @s run fill ~-9 129 ~-9 ~9 129 ~9 minecraft:command_block[facing=up] replace #seeker:non_bedrock_blocks

#> create bedrock layer(teleport detection)
execute as @s at @s run fill ~-8 130 ~-8 ~8 130 ~8 minecraft:bedrock

#> move blocks
execute as @s at @s store result score @s current_block_clone_count run clone ~-8 ~-200 ~-8 ~8 ~-184 ~8 ~-8 ~-8 ~-8 filtered #seeker:non_placeholder_blocks move
execute as @s if score @s current_block_clone_count matches 1.. run function seeker:game/blocks_clone/the_end/range_8/clone_operations

#> clear barrier
execute as @s at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:barrier

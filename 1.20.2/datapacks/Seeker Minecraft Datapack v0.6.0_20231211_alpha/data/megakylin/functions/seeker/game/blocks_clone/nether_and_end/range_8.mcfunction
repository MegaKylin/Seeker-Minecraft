##
 # range_8.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> create barrier layer(hold fluid)
execute as @s at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier

#> create command block layer(teleport range detection)
execute as @s at @s run fill ~-9 129 ~-9 ~9 129 ~9 minecraft:command_block[facing=up] replace #megakylin:non_bedrock_blocks
execute as @s at @s run fill ~-7 129 ~-7 ~7 129 ~7 minecraft:bedrock

#> create bedrock layer(teleport detection)
execute as @s at @s run fill ~-8 130 ~-8 ~8 130 ~8 minecraft:bedrock
execute as @s at @s if block ~ 127 ~ minecraft:bedrock run fill ~-8 255 ~-8 ~8 255 ~8 minecraft:bedrock

#> lava fixing
# replace fluid with solid
execute as @s at @s run fill ~-8 ~-200 ~-8 ~8 ~-184 ~8 minecraft:structure_block replace minecraft:lava[level=0]

#> move blocks
execute as @s at @s store result score @s current_block_clone_number run clone ~-8 ~-200 ~-8 ~8 ~-184 ~8 ~-8 ~-8 ~-8 filtered #megakylin:non_placeholder_blocks move
execute as @s if score @s current_block_clone_number matches 1.. run function megakylin:seeker/game/blocks_clone/nether_and_end/range_8_generate_protection_barrier

#> lava fixing
# replace solid with fluid
execute as @s at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:lava[level=0] replace minecraft:structure_block

#> clear barrier
execute as @s at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:barrier

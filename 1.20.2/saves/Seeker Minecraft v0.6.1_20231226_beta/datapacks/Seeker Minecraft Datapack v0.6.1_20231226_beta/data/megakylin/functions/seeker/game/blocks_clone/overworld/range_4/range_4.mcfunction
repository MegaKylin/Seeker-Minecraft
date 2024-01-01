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
execute as @s at @s run fill ~-5 129 ~-5 ~5 129 ~5 minecraft:command_block[facing=up] replace #megakylin:non_bedrock_blocks

#> create bedrock layer(teleport detection)
execute as @s at @s run fill ~-4 130 ~-4 ~4 130 ~4 minecraft:bedrock

#> water fixing
# replace fluid with solid
execute as @s at @s run fill ~-4 ~-196 ~-4 ~4 ~-188 ~4 minecraft:structure_block replace minecraft:water[level=0]
execute as @s at @s run fill ~-4 ~-196 ~-4 ~4 ~-188 ~4 minecraft:polished_granite replace minecraft:seagrass
execute as @s at @s run fill ~-4 ~-196 ~-4 ~4 ~-188 ~4 minecraft:polished_diorite replace minecraft:tall_seagrass[half=lower]
execute as @s at @s run fill ~-4 ~-196 ~-4 ~4 ~-188 ~4 minecraft:polished_andesite replace minecraft:tall_seagrass[half=upper]
execute as @s at @s run fill ~-4 ~-196 ~-4 ~4 ~-188 ~4 minecraft:polished_deepslate replace minecraft:kelp_plant
execute as @s at @s run fill ~-4 ~-196 ~-4 ~4 ~-188 ~4 minecraft:polished_basalt replace minecraft:kelp

#> move blocks
execute as @s at @s store result score @s current_block_clone_number run clone ~-4 ~-196 ~-4 ~4 ~-188 ~4 ~-4 ~-4 ~-4 filtered #megakylin:non_placeholder_blocks move
execute as @s if score @s current_block_clone_number matches 1.. run function megakylin:seeker/game/blocks_clone/overworld/range_4/clone_operations

#> water fixing
# replace solid with fluid
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:water[level=0] replace minecraft:structure_block
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:seagrass replace minecraft:polished_granite
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:tall_seagrass[half=lower] replace minecraft:polished_diorite
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:tall_seagrass[half=upper] replace minecraft:polished_andesite
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:kelp_plant replace minecraft:polished_deepslate
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:kelp replace minecraft:polished_basalt

#> clear barrier
execute as @s at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:barrier

##
 # useless_entity_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s[predicate=seeker:areas/to_be_copied_area,type=minecraft:item] at @s if block ~ 130 ~ minecraft:bedrock run tag @s add useless_entity

execute as @s[predicate=seeker:dimensions/overworld, predicate=seeker:areas/to_be_copied_area] at @s unless block ~ ~193 ~ #seeker:placeholder_blocks run tag @s add useless_entity
execute as @s[predicate=seeker:dimensions/the_nether, predicate=seeker:areas/to_be_copied_area] at @s unless block ~ ~129 ~ #seeker:placeholder_blocks run tag @s add useless_entity
execute as @s[predicate=seeker:dimensions/the_end, predicate=seeker:areas/to_be_copied_area] at @s unless block ~ ~129 ~ #seeker:placeholder_blocks run tag @s add useless_entity

execute as @s[predicate=seeker:dimensions/overworld,predicate=seeker:areas/game_area] at @s unless block ~ ~-191 ~ #seeker:placeholder_blocks run tag @s add useless_entity
execute as @s[predicate=seeker:dimensions/the_nether,predicate=seeker:areas/game_area] at @s unless block ~ ~-127 ~ #seeker:placeholder_blocks run tag @s add useless_entity
execute as @s[predicate=seeker:dimensions/the_end,predicate=seeker:areas/game_area] at @s unless block ~ ~-127 ~ #seeker:placeholder_blocks run tag @s add useless_entity

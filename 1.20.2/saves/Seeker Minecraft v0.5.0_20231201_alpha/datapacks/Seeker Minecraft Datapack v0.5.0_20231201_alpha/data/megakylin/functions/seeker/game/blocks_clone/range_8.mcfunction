##
 # range_8.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> create barrier layer
execute as @s at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier

#> create bedrock layer
execute as @s at @s run fill ~-8 129 ~-8 ~8 129 ~8 minecraft:bedrock
execute as @s at @s if block ~ 127 ~ minecraft:bedrock run fill ~-8 255 ~-8 ~8 255 ~8 minecraft:bedrock

#> Overworld
# clear barrier
execute as @s[tag=Overworld] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:barrier

# create protection platform to hold falling blocks and water
execute as @s[tag=Overworld] at @s run fill ~-8 ~-9 ~-8 ~8 ~-9 ~8 minecraft:barrier replace minecraft:air
execute as @s[tag=Overworld] at @s run fill ~-8 ~-9 ~-8 ~8 ~-9 ~8 minecraft:barrier replace minecraft:water[level=8]

# create protection barrier to hold water when in water
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 minecraft:barrier replace minecraft:air
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:barrier

execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~9 ~-8 ~8 ~9 ~8 ~-8 minecraft:barrier replace minecraft:water[level=1]
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-8 ~-8 ~9 ~8 ~8 ~9 minecraft:barrier replace minecraft:water[level=1]
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-9 ~-8 ~-8 ~-9 ~8 ~8 minecraft:barrier replace minecraft:water[level=1]
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-8 ~-8 ~-9 ~8 ~8 ~-9 minecraft:barrier replace minecraft:water[level=1]

# water fix - replace fluid with solid
execute as @s[tag=Overworld] at @s run fill ~-9 ~-201 ~-9 ~9 ~-183 ~9 minecraft:structure_block replace minecraft:water[level=0]
execute as @s[tag=Overworld] at @s run fill ~-9 ~-201 ~-9 ~9 ~-183 ~9 minecraft:polished_granite replace minecraft:seagrass
execute as @s[tag=Overworld] at @s run fill ~-9 ~-201 ~-9 ~9 ~-183 ~9 minecraft:polished_diorite replace minecraft:tall_seagrass
execute as @s[tag=Overworld] at @s run fill ~-9 ~-201 ~-9 ~9 ~-183 ~9 minecraft:polished_andesite replace minecraft:kelp_plant
execute as @s[tag=Overworld] at @s run fill ~-9 ~-201 ~-9 ~9 ~-183 ~9 minecraft:polished_deepslate replace minecraft:kelp

# move blocks
execute as @s[tag=Overworld] at @s run clone ~-8 ~-200 ~-8 ~8 ~-184 ~8 ~-8 ~-8 ~-8 masked move

# water fix - replace solid with fluid
execute as @s[tag=Overworld] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:water[level=0] replace minecraft:structure_block
execute as @s[tag=Overworld] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:seagrass replace minecraft:polished_granite
execute as @s[tag=Overworld] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:tall_seagrass replace minecraft:polished_diorite
execute as @s[tag=Overworld] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:kelp_plant replace minecraft:polished_andesite
execute as @s[tag=Overworld] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:kelp replace minecraft:polished_deepslate

#> Nether & End
# clear barrier
execute as @s[tag=NE] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:air replace minecraft:barrier

# create protection platform to hold falling blocks and water
execute as @s[tag=NE] at @s run fill ~-8 ~-9 ~-8 ~8 ~-9 ~8 minecraft:barrier replace minecraft:air
execute as @s[tag=NE] at @s run fill ~-8 ~-9 ~-8 ~8 ~-9 ~8 minecraft:barrier replace minecraft:lava[level=8]

# water fix - replace fluid with solid
execute as @s[tag=NE] at @s run fill ~-9 ~-137 ~-9 ~9 ~-119 ~9 minecraft:structure_block replace minecraft:lava[level=0]

# move blocks
execute as @s[tag=NE] at @s run clone ~-8 ~-136 ~-8 ~8 ~-120 ~8 ~-8 ~-8 ~-8 masked move

# water fix - replace solid with fluid
execute as @s[tag=NE] at @s run fill ~-8 ~-8 ~-8 ~8 ~8 ~8 minecraft:lava[level=0] replace minecraft:structure_block

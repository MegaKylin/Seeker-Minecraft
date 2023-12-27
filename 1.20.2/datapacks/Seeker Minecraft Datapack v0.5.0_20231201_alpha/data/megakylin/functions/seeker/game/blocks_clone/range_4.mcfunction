##
 # range_4.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> create barrier layer
execute as @s at @s run fill ~-16 128 ~-16 ~16 128 ~16 minecraft:barrier

#> create bedrock layer
execute as @s at @s run fill ~-4 129 ~-4 ~4 129 ~4 minecraft:bedrock
execute as @s at @s if block ~ 127 ~ minecraft:bedrock run fill ~-4 255 ~-4 ~4 255 ~4 minecraft:bedrock

#> Overworld
# clear barrier
execute as @s[tag=Overworld] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:barrier

# create protection platform to hold falling blocks and water
execute as @s[tag=Overworld] at @s run fill ~-4 ~-5 ~-4 ~4 ~-5 ~4 minecraft:barrier replace minecraft:air
execute as @s[tag=Overworld] at @s run fill ~-5 ~-5 ~-5 ~5 ~-5 ~5 minecraft:barrier replace minecraft:water[level=8]

# create protection barrier to hold water when in water
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:barrier replace minecraft:air
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:barrier

execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~5 ~-4 ~4 ~5 ~4 ~-4 minecraft:barrier replace minecraft:water[level=1]
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-4 ~-4 ~5 ~4 ~4 ~5 minecraft:barrier replace minecraft:water[level=1]
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-5 ~-4 ~-4 ~-5 ~4 ~4 minecraft:barrier replace minecraft:water[level=1]
execute as @s[tag=Overworld] at @s if block ~ ~ ~ minecraft:water run fill ~-4 ~-4 ~-5 ~4 ~4 ~-5 minecraft:barrier replace minecraft:water[level=1]

# water fix - replace fluid with solid
execute as @s[tag=Overworld] at @s run fill ~-5 ~-197 ~-5 ~5 ~-187 ~5 minecraft:structure_block replace minecraft:water[level=0]
execute as @s[tag=Overworld] at @s run fill ~-5 ~-197 ~-5 ~5 ~-187 ~5 minecraft:polished_granite replace minecraft:seagrass
execute as @s[tag=Overworld] at @s run fill ~-5 ~-197 ~-5 ~5 ~-187 ~5 minecraft:polished_diorite replace minecraft:tall_seagrass
execute as @s[tag=Overworld] at @s run fill ~-5 ~-197 ~-5 ~5 ~-187 ~5 minecraft:polished_andesite replace minecraft:kelp_plant
execute as @s[tag=Overworld] at @s run fill ~-5 ~-197 ~-5 ~5 ~-187 ~5 minecraft:polished_deepslate replace minecraft:kelp

# move blocks
execute as @s[tag=Overworld] at @s run clone ~-4 ~-196 ~-4 ~4 ~-188 ~4 ~-4 ~-4 ~-4 masked move

# water fix - replace solid with fluid
execute as @s[tag=Overworld] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:water[level=0] replace minecraft:structure_block
execute as @s[tag=Overworld] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:seagrass replace minecraft:polished_granite
execute as @s[tag=Overworld] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:tall_seagrass replace minecraft:polished_diorite
execute as @s[tag=Overworld] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:kelp_plant replace minecraft:polished_andesite
execute as @s[tag=Overworld] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:kelp replace minecraft:polished_deepslate

#> Nether & End
# clear barrier
execute as @s[tag=NE] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:barrier

# create protection platform to hold falling blocks and lava
execute as @s[tag=NE] at @s run fill ~-4 ~-5 ~-4 ~4 ~-5 ~4 minecraft:barrier replace minecraft:air
execute as @s[tag=NE] at @s run fill ~-4 ~-5 ~-4 ~4 ~-5 ~4 minecraft:barrier replace minecraft:lava[level=8]

# water fix - replace fluid with solid
execute as @s[tag=NE] at @s run fill ~-5 ~-133 ~-5 ~5 ~-123 ~5 minecraft:structure_block replace minecraft:lava[level=0]

# move blocks
execute as @s[tag=NE] at @s run clone ~-4 ~-132 ~-4 ~4 ~-124 ~4 ~-4 ~-4 ~-4 masked move

# water fix - replace solid with fluid
execute as @s[tag=NE] at @s run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:lava[level=0] replace minecraft:structure_block

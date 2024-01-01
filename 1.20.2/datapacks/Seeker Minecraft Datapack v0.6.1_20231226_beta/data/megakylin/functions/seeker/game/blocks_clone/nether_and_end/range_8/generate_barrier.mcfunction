##
 # generate_protection_barrier.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> game area
#> always
# create protection barrier(platform shape) to hold falling blocks and fluid at the bottom
execute as @s at @s run fill ~-8 ~-9 ~-8 ~8 ~-9 ~8 minecraft:barrier replace minecraft:air
# replace overflow lava at the bottom
execute as @s at @s run fill ~-8 ~-9 ~-8 ~8 ~-9 ~8 minecraft:barrier replace minecraft:lava[level=8]
#> when the player is on land
# create protection barrier(hemisphere shape) to hold fluid on the edge
execute as @s at @s unless block ~ ~ ~ #megakylin:fluid_blocks run fill ~9 ~-8 ~8 ~9 ~-1 ~-8 minecraft:barrier replace minecraft:air
execute as @s at @s unless block ~ ~ ~ #megakylin:fluid_blocks run fill ~-8 ~-8 ~9 ~8 ~-1 ~9 minecraft:barrier replace minecraft:air
execute as @s at @s unless block ~ ~ ~ #megakylin:fluid_blocks run fill ~-9 ~-8 ~-8 ~-9 ~-1 ~8 minecraft:barrier replace minecraft:air
execute as @s at @s unless block ~ ~ ~ #megakylin:fluid_blocks run fill ~-8 ~-8 ~-9 ~8 ~-1 ~-9 minecraft:barrier replace minecraft:air
#> when the player is in fluid
# create protection barrier(sphere shape) to hold fluid
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~9 ~-8 ~8 ~9 ~8 ~-8 minecraft:barrier replace minecraft:air
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-8 ~-8 ~9 ~8 ~8 ~9 minecraft:barrier replace minecraft:air
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-9 ~-8 ~-8 ~-9 ~8 ~8 minecraft:barrier replace minecraft:air
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-8 ~-8 ~-9 ~8 ~8 ~-9 minecraft:barrier replace minecraft:air
execute as @s at @s if block ~ ~1 ~ #megakylin:fluid_blocks run fill ~-8 ~9 ~-8 ~8 ~9 ~8 minecraft:barrier replace minecraft:air
# replace overflow lava on the side
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~9 ~-8 ~8 ~9 ~8 ~-8 minecraft:barrier replace minecraft:lava[level=1]
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-8 ~-8 ~9 ~8 ~8 ~9 minecraft:barrier replace minecraft:lava[level=1]
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-9 ~-8 ~-8 ~-9 ~8 ~8 minecraft:barrier replace minecraft:lava[level=1]
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-8 ~-8 ~-9 ~8 ~8 ~-9 minecraft:barrier replace minecraft:lava[level=1]

#> to be copied area
#> always
# create placeholder
execute as @s at @s run fill ~-8 ~-136 ~-8 ~8 ~-120 ~8 minecraft:barrier replace minecraft:air
# create protection barrier(shield shape) to hold fluid
execute as @s at @s run fill ~-8 ~-119 ~-8 ~8 ~-119 ~8 minecraft:barrier replace minecraft:air

##
 # range_4_generate_protection_barrier.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> game area
#> always
# create protection barrier(platform shape) to hold falling blocks and fluid at the bottom
execute as @s at @s run fill ~-4 ~-5 ~-4 ~4 ~-5 ~4 minecraft:barrier replace minecraft:air
# replace overflow lava at the bottom
execute as @s at @s run fill ~-4 ~-5 ~-4 ~4 ~-5 ~4 minecraft:barrier replace minecraft:lava[level=8]
# create protection barrier(hemisphere shape) to hold fluid on the edge
execute as @s at @s run fill ~5 ~-4 ~4 ~5 ~-1 ~-4 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-4 ~-4 ~5 ~4 ~-1 ~5 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-5 ~-4 ~-4 ~-5 ~-1 ~4 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-4 ~-4 ~-5 ~4 ~-1 ~-5 minecraft:barrier replace minecraft:air
#> when the player is in fluid
# create protection barrier(sphere shape) to hold fluid
execute as @s at @s if block ~ ~1 ~ #megakylin:fluid_blocks run fill ~-4 ~5 ~-4 ~4 ~5 ~4 minecraft:barrier replace minecraft:air
# replace overflow lava on the side
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~5 ~-4 ~4 ~5 ~4 ~-4 minecraft:barrier replace minecraft:lava[level=1]
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-4 ~-4 ~5 ~4 ~4 ~5 minecraft:barrier replace minecraft:lava[level=1]
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-5 ~-4 ~-4 ~-5 ~4 ~4 minecraft:barrier replace minecraft:lava[level=1]
execute as @s at @s if block ~ ~ ~ #megakylin:fluid_blocks run fill ~-4 ~-4 ~-5 ~4 ~4 ~-5 minecraft:barrier replace minecraft:lava[level=1]

#> to be copied area
#> always
# create placeholder
execute as @s at @s run fill ~-4 ~-132 ~-4 ~4 ~-124 ~4 minecraft:barrier replace minecraft:air
# create protection barrier(shield shape) to hold fluid
execute as @s at @s run fill ~-4 ~-132 ~-4 ~4 ~-132 ~4 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~5 ~-132 ~4 ~5 ~-124 ~-4 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-4 ~-132 ~5 ~4 ~-124 ~5 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-5 ~-132 ~-4 ~-5 ~-124 ~4 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-4 ~-132 ~-5 ~4 ~-124 ~-5 minecraft:barrier replace minecraft:air
execute as @s at @s run fill ~-4 ~-124 ~-4 ~4 ~-124 ~4 minecraft:barrier replace minecraft:air

##
 # running.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> tags detection
# players' tag
execute as @a run function seeker:game/tags_detection/view_range_detection
# other entities' tag
execute as @e[type=!player,type=!minecraft:falling_block,tag=!useless_entity] run function seeker:game/tags_detection/teleport_area_detection

#> save zone
execute as @a[predicate=seeker:areas/to_be_copied_area] run function seeker:game/safe_zone/teleport
execute as @e[tag=SMSZ,tag=arrived] at @s unless entity @p[distance=..8] run function seeker:game/safe_zone/remove_platform

#> blocks clone
# overworld
execute as @e[predicate=seeker:dimensions/overworld,tag=range_4] run function seeker:game/blocks_clone/overworld/range_4
execute as @e[predicate=seeker:dimensions/overworld,tag=range_8] run function seeker:game/blocks_clone/overworld/range_8
# the nether
execute as @e[predicate=seeker:dimensions/the_nether,tag=range_4] run function seeker:game/blocks_clone/the_nether/range_4
execute as @e[predicate=seeker:dimensions/the_nether,tag=range_8] run function seeker:game/blocks_clone/the_nether/range_8
# the end
execute as @e[predicate=seeker:dimensions/the_end,tag=range_4] run function seeker:game/blocks_clone/the_end/range_4
execute as @e[predicate=seeker:dimensions/the_end,tag=range_8] run function seeker:game/blocks_clone/the_end/range_8

#> entities teleport
# mobs teleport
execute as @e[predicate=seeker:dimensions/overworld,tag=teleport_area] run function seeker:game/entities_teleport/overworld
execute as @e[predicate=seeker:dimensions/the_nether,tag=teleport_area] run function seeker:game/entities_teleport/the_nether
execute as @e[predicate=seeker:dimensions/the_end,tag=teleport_area] run function seeker:game/entities_teleport/the_end
execute as @e[predicate=seeker:dimensions/the_end,type=minecraft:end_crystal] run function seeker:game/entities_teleport/end_crystal

#> items
# Seeker Minecraft Crafting Table
execute as @e[type=item,nbt={Item: {id: "minecraft:crafting_table", Count: 1b}}] at @s if entity @e[tag=SMS,tag=running,tag=!giving] if entity @e[type=item,nbt={Item: {id: "minecraft:spyglass", Count: 1b}},distance=..0.5] run function seeker:game/items/seeker_minecraft_crafting_table/craft
# Flare I
execute as @e[type=item,nbt={Item: {id: "minecraft:paper", Count: 1b}}] at @s if entity @e[tag=SMS,tag=running,tag=!giving] if entity @e[type=item,nbt={Item: {id: "minecraft:gunpowder", Count: 1b}},distance=..0.5] if entity @e[type=item,nbt={Item: {id: "minecraft:glowstone_dust", Count: 1b}},distance=..0.5] run function seeker:game/items/flare_1/craft
# Knock Back Rod I
execute as @e[type=item,nbt={Item: {id: "minecraft:blaze_rod", Count: 1b}}] at @s if entity @e[tag=SMS,tag=running,tag=!giving] if entity @e[type=item,nbt={Item: {id: "minecraft:gunpowder", Count: 1b}},distance=..0.5] if entity @e[type=item,nbt={Item: {id: "minecraft:redstone", Count: 1b}},distance=..0.5] run function seeker:game/items/knock_back_rod_1/craft

#> block functions
# Seeker Minecraft Crafting Table
execute as @e[tag=spawner_SMCT] run function seeker:game/blocks_functions/seeker_minecraft_crafting_table/place
execute as @e[tag=SMCT] at @s unless block ~ ~ ~ minecraft:dispenser run function seeker:game/blocks_functions/seeker_minecraft_crafting_table/destroy
execute as @e[tag=SMCT] run function seeker:game/blocks_functions/seeker_minecraft_crafting_table/craft
# Lava Cauldron
# iron
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_axe", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_boots", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_chestplate", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_helmet", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_hoe", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_leggings", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_pickaxe", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_shovel", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
execute as @e[type=item,nbt={Item: {id: "minecraft:iron_sword", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/iron_items
# gold
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_axe", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_boots", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_chestplate", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_helmet", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_hoe", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_leggings", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_pickaxe", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_shovel", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items
execute as @e[type=item,nbt={Item: {id: "minecraft:golden_sword", Count:1b}}] at @s if block ~ ~-1 ~ minecraft:lava_cauldron run function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/golden_items

##
 # main.mcfunction
 # seeker
 #
 # Created by MegaKylin.
##

#> tags detection
# always detect useless entities
execute as @e[type=!player,type=!#megakylin:bosses] run function megakylin:seeker/game/tags_detection/useless_entity_detection
execute as @e[type=!minecraft:falling_block,tag=!Useless_Entity] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/tags_detection/dimension_detection
execute as @a if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/tags_detection/view_range_detection
execute as @e[type=!player,type=!minecraft:falling_block,tag=!Useless_Entity] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/tags_detection/teleport_range_detection

#> blocks clone
execute as @e[tag=Overworld,tag=Range_4] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/blocks_clone/overworld/range_4
execute as @e[tag=Overworld,tag=Range_8] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/blocks_clone/overworld/range_8
execute as @e[tag=NE,tag=Range_4] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/blocks_clone/nether_and_end/range_4
execute as @e[tag=NE,tag=Range_8] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/blocks_clone/nether_and_end/range_8
# other entities always clear barrier
execute as @e[type=!player,type=!falling_block,tag=!Useless_Entity] at @s if block ~ 130 ~ minecraft:bedrock if block ~ ~ ~ minecraft:air run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:barrier

#> entities teleport
# always eliminate useless entities
execute as @e[tag=Useless_Entity] run function megakylin:seeker/game/entities_teleport/eliminate_entities
# players save zone
execute as @a[gamemode=!spectator] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/entities_teleport/players_save_zone
# mobs
execute as @e[tag=Overworld,tag=Teleport_Range,tag=!Useless_Entity] at @s if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/entities_teleport/overworld/all_mobs
execute as @e[tag=NE,tag=Teleport_Range,tag=!Useless_Entity] at @s if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/entities_teleport/nether_and_end/all_mobs

#> items
execute as @e[tag=!Item_Flare_I,nbt={Item: {id: "minecraft:paper", Count: 1b}}] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/flare_1/create
execute as @e[tag=!Item_Knock_Back_Rod_I,nbt={Item: {id: "minecraft:blaze_rod", Count: 1b}}] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/knock_back_rod_1/create
execute as @e[tag=!Item_SMCT,nbt={Item: {id: "minecraft:crafting_table", Count: 1b}}] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/create
execute as @e[tag=Spawner_SMCT] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/place
execute as @e[tag=SMCT] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/destroy
execute as @e[tag=SMCT] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/craft

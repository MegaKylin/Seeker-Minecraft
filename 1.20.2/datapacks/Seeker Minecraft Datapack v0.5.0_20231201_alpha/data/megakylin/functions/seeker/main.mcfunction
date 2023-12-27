##
 # main.mcfunction
 # seeker
 #
 # Created by MegaKylin.
##

#> tag detection
execute as @e if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/dimension_detection
execute as @a if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/view_range_detection
# always detect useless entities
execute as @e[type=!player,type=!wither,type=!ender_dragon] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/useless_entity_detection

#> save zone
execute as @a[gamemode=!spectator] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/save_zone

#> blocks clone
execute as @e[tag=Range_4] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/blocks_clone/range_4
execute as @e[tag=Range_8] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/blocks_clone/range_8
# always clear barrier
execute as @e[type=!player,type=!falling_block,tag=!Useless_Entity] run function megakylin:seeker/game/blocks_clone/clear_barrier

#> mobs teleport
# always eliminate useless entities
execute as @e[tag=Useless_Entity] run function megakylin:seeker/game/mobs_teleport/eliminate_entities
execute as @e[type=!player,tag=!Useless_Entity] at @s if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/mobs_teleport/all_mobs
# execute as @e[type=end_crystal,tag=NE] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/mobs_teleport/end_crystal

#> seeker minecraft items
execute as @e[nbt={Item: {id: "minecraft:paper", Count: 1b}}] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/flare_1/create
execute as @e[nbt={Item: {id: "minecraft:blaze_rod", Count: 1b}}] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/knock_back_rod_1/create
execute as @e[nbt={Item: {id: "minecraft:crafting_table", Count: 1b}}] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/create
execute as @e[tag=Spawner_SMCT] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/place
execute as @e[tag=SMCT] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/destroy
execute as @e[tag=SMCT] if entity @e[tag=SMS,tag=running] run function megakylin:seeker/game/items/seeker_minecraft_crafting_table/craft

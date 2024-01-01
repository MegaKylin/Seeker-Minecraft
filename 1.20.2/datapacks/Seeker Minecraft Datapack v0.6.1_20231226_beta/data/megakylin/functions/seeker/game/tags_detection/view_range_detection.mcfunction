##
 # view_range_detection.mcfunction
 # 
 #
 # Created by MegaKylin.
##

#> remove tag
# player
tag @s[gamemode=spectator] remove Range_4
tag @s[gamemode=spectator] remove Range_8
tag @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] remove Range_4
tag @s[nbt={Inventory: [{Slot: 103b, id: "minecraft:netherite_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] remove Range_4
tag @s[nbt=!{Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] remove Range_8
tag @s[nbt=!{Inventory: [{Slot: 103b, id: "minecraft:netherite_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] remove Range_8

#> add tag
# player
tag @s[gamemode=!spectator,nbt=!{Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] add Range_4
tag @s[gamemode=!spectator,nbt=!{Inventory: [{Slot: 103b, id: "minecraft:netherite_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] add Range_4
tag @s[gamemode=!spectator,nbt={Inventory: [{Slot: 103b, id: "minecraft:diamond_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] add Range_8
tag @s[gamemode=!spectator,nbt={Inventory: [{Slot: 103b, id: "minecraft:netherite_helmet", Count: 1b, tag: {Tags: ["FVH"]}}]}] add Range_8
# allay
execute as @s at @s run tag @e[type=minecraft:allay,tag=!Useless_Entity,distance=..4] add Range_4
# flare
execute as @s at @s run tag @e[type=minecraft:snowball,tag=!Useless_Entity,nbt={Item: {tag: {Tags: ["Flare_I"]}}},distance=..4] add Range_4
execute as @s at @s run tag @e[type=minecraft:snowball,tag=!Useless_Entity,nbt={Item: {tag: {Tags: ["Flare_II"]}}},distance=..4] add Range_8

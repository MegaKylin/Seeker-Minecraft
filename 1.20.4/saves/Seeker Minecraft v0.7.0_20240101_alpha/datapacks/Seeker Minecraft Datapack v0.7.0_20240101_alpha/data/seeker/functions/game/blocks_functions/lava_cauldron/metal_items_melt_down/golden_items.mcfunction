##
 # golden_items.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/lava_cauldron/dip
function seeker:effects/craft/lava_cauldron/forge
function seeker:effects/craft/lava_cauldron/cool

#> golden items durability
# tools
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_sword", Count:1b}}] items_value 32
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_shovel", Count:1b}}] items_value 32
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_pickaxe", Count:1b}}] items_value 32
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_axe", Count:1b}}] items_value 32
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_hoe", Count:1b}}] items_value 32
# armors
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_helmet", Count:1b}}] items_value 77
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_chestplate", Count:1b}}] items_value 112
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_leggings", Count:1b}}] items_value 105
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_boots", Count:1b}}] items_value 91

#> ratio
# tools
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_sword", Count:1b}}] items_value_nugget_ratio 3
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_shovel", Count:1b}}] items_value_nugget_ratio 4
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_pickaxe", Count:1b}}] items_value_nugget_ratio 2
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_axe", Count:1b}}] items_value_nugget_ratio 2
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_hoe", Count:1b}}] items_value_nugget_ratio 3
# armors
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_helmet", Count:1b}}] items_value_nugget_ratio 2
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_chestplate", Count:1b}}] items_value_nugget_ratio 2
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_leggings", Count:1b}}] items_value_nugget_ratio 2
scoreboard players set @s[type=item,nbt={Item: {id: "minecraft:golden_boots", Count:1b}}] items_value_nugget_ratio 3

execute as @s store result score @s items_damage run data get entity @s Item.tag.Damage
scoreboard players operation @s items_value -= @s items_damage
scoreboard players operation @s items_value /= @s items_value_nugget_ratio

function seeker:game/blocks_functions/lava_cauldron/metal_items_melt_down/give_gold

kill @s

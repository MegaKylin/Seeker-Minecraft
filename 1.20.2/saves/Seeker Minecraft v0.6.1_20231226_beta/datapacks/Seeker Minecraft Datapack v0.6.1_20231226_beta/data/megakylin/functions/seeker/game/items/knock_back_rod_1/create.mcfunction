##
 # create.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s if entity @e[nbt={Item: {id: "minecraft:gunpowder", Count: 1b}},distance=..0.5] if entity @e[nbt={Item: {id: "minecraft:redstone", Count: 1b}},distance=..0.5] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:blaze_rod", tag: {display: {Name: '{"text":"Knock Back Rod I"}'}, Enchantments: [{id: "knockback", lvl: 5}]}, Count: 1b}, Invulnerable: 1b, Age: -32768, Tags: ["Item_Knock_Back_Rod_I"]}

execute as @s at @s if entity @e[tag=Item_Knock_Back_Rod_I,distance=..0.5] run kill @e[nbt={Item: {id: "minecraft:gunpowder"}},distance=..0.5]
execute as @s at @s if entity @e[tag=Item_Knock_Back_Rod_I,distance=..0.5] run kill @e[nbt={Item: {id: "minecraft:redstone"}},distance=..0.5]
execute as @s at @s if entity @e[tag=Item_Knock_Back_Rod_I,distance=..0.5] run kill @s

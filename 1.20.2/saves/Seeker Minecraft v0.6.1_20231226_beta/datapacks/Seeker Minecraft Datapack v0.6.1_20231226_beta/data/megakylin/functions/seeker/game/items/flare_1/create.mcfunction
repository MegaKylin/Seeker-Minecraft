##
 # create.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s if entity @e[nbt={Item: {id: "minecraft:gunpowder", Count: 1b}},distance=..0.5] if entity @e[nbt={Item: {id: "minecraft:glowstone_dust", Count: 1b}},distance=..0.5] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare I"}'}, Tags: ["Flare_I"], Enchantments: [{id: "fire_aspect", lvl: 1}]}, Count: 1b}, Invulnerable: 1b, Age: -32768, Tags: ["Item_Flare_I"]}

execute as @s at @s if entity @e[tag=Item_Flare_I,distance=..0.5] run kill @e[nbt={Item: {id: "minecraft:gunpowder"}},distance=..0.5]
execute as @s at @s if entity @e[tag=Item_Flare_I,distance=..0.5] run kill @e[nbt={Item: {id: "minecraft:glowstone_dust"}},distance=..0.5]
execute as @s at @s if entity @e[tag=Item_Flare_I,distance=..0.5] run kill @s

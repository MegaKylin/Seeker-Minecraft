##
 # craft.mcfunction
 # 
 #
 # Created by MegaKylin.
##

# craft Flare I
execute as @s at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 1b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 4b, id: "minecraft:paper", Count: 1b}, {Slot: 7b, id: "minecraft:gunpowder", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare I"}'}, Tags: ["Flare_I"], Enchantments: [{id: "fire_aspect", lvl: 1}]}, Count: 1b}]}

# craft Flare II
execute as @s at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 0b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 1b, id: "minecraft:gunpowder", Count: 1b}, {Slot: 2b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 3b, id: "minecraft:gunpowder", Count: 1b}, {Slot: 4b, id: "minecraft:snowball", Count: 1b, tag: {Tags: ["Flare_I"]}}, {Slot: 5b, id: "minecraft:gunpowder", Count: 1b}, {Slot: 6b, id: "minecraft:glowstone_dust", Count: 1b}, {Slot: 7b, id: "minecraft:gunpowder", Count: 1b}, {Slot: 8b, id: "minecraft:glowstone_dust", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare II"}'}, Tags: ["Flare_II"], Enchantments: [{id: "fire_aspect", lvl: 2}]}, Count: 1b}]}

# craft Knock Back Rod I
execute as @s at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 1b, id: "minecraft:redstone", Count: 1b}, {Slot: 4b, id: "minecraft:blaze_rod", Count: 1b}, {Slot: 7b, id: "minecraft:gunpowder", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:blaze_rod", tag: {display: {Name: '{"text":"Knock Back Rod I"}'}, Tags: ["KBR_I"], Enchantments: [{id: "knockback", lvl: 5}]}, Count: 1b}]}

# craft Knock Back Rod II
execute as @s at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 0b, id: "minecraft:tnt", Count: 1b}, {Slot: 1b, id: "minecraft:piston", Count: 1b}, {Slot: 2b, id: "minecraft:tnt", Count: 1b}, {Slot: 3b, id: "minecraft:piston", Count: 1b}, {Slot: 4b, id: "minecraft:blaze_rod", Count: 1b, tag: {Tags: ["KBR_I"]}}, {Slot: 5b, id: "minecraft:piston", Count: 1b}, {Slot: 6b, id: "minecraft:tnt", Count: 1b}, {Slot: 7b, id: "minecraft:piston", Count: 1b}, {Slot: 8b, id: "minecraft:tnt", Count: 1b},]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:blaze_rod", tag: {display: {Name: '{"text":"Knock Back Rod II"}'}, Tags: ["KBR_II"], Enchantments: [{id: "knockback", lvl: 10}]}, Count: 1b}]}

# craft Far View Helmet
execute as @s at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 1b, id: "minecraft:redstone_lamp", Count: 1b}, {Slot: 3b, id: "minecraft:spyglass", Count: 1b}, {Slot: 4b, id: "minecraft:diamond_helmet", Count: 1b}, {Slot: 5b, id: "minecraft:spyglass", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:diamond_helmet", tag: {display: {Name: '{"text":"Far View Helmet"}'}, Tags: ["FVH"]}, Count: 1b}]}
execute as @s at @s if block ~ ~ ~ minecraft:dispenser[facing=up]{Items: [{Slot: 1b, id: "minecraft:redstone_lamp", Count: 1b}, {Slot: 3b, id: "minecraft:spyglass", Count: 1b}, {Slot: 4b, id: "minecraft:netherite_helmet", Count: 1b}, {Slot: 5b, id: "minecraft:spyglass", Count: 1b}]} run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:netherite_helmet", tag: {display: {Name: '{"text":"Far View Helmet"}'}, Tags: ["FVH"]}, Count: 1b}]}

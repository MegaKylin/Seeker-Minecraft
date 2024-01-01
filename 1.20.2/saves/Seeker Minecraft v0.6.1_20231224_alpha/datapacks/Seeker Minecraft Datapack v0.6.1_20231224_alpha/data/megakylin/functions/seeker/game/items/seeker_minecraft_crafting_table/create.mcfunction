##
 # create.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s if entity @e[nbt={Item: {id: "minecraft:spyglass", Count: 1b}},distance=..0.5] run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', NoAI: 1b, NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Tags: ["Spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}, Tags: ["Item_SMCT"], Invulnerable: 1b, Age: -32768}

execute as @s at @s if entity @e[tag=Item_SMCT,distance=..0.5] run kill @e[nbt={Item: {id: "minecraft:spyglass"}},distance=..0.5]
execute as @s at @s if entity @e[tag=Item_SMCT,distance=..0.5] run kill @s

##
 # destroy.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s unless block ~ ~ ~ minecraft:dispenser run tag @s add Destroyed
execute as @s[tag=Destroyed] at @s if entity @e[nbt={Item: {id: "minecraft:dispenser"}},distance=..1] run tag @s add Dropped

execute as @s[tag=Dropped] at @s run kill @e[nbt={Item: {id: "minecraft:dispenser"}},distance=..1]
execute as @s[tag=Dropped] at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', NoAI: 1b, NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Tags: ["Spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}, Tags: ["Item_SMCT"], Invulnerable: 1b, Age: -32768}

kill @s[tag=Destroyed]

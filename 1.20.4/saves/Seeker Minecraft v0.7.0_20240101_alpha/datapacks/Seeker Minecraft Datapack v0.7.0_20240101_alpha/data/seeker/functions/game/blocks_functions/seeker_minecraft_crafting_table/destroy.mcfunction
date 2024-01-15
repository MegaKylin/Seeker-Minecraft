##
 # destroy.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s if entity @e[type=item,nbt={Item: {id: "minecraft:dispenser"}},distance=..0.5] run tag @s add Dropped

execute as @s[tag=Dropped] at @s run kill @e[type=item,nbt={Item: {id: "minecraft:dispenser"}},distance=..0.5]
execute as @s[tag=Dropped] at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', DeathLootTable: "empty", Invulnerable: true, NoAI: true, NoGravity: true, Silent: true, Tags: ["spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}, Tags: ["Item_SMCT"], Invulnerable: 1b, Age: -32768}

execute as @s at @s positioned ~ ~1 ~ run kill @e[tag=SMCT_name,distance=..0.5]
kill @s

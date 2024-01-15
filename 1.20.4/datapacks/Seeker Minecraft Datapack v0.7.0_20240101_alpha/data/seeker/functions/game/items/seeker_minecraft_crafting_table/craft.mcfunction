##
 # craft.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/hand/seeker_minecraft_crafting_table

execute as @s at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', DeathLootTable: "empty", Invulnerable: true, NoAI: true, NoGravity: true, Silent: true, Tags: ["spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}, Tags: ["Item_SMCT"], Invulnerable: 1b, Age: -32768}

execute as @s at @s run kill @e[type=item,nbt={Item: {id: "minecraft:spyglass", Count: 1b}},distance=..0.5]
execute as @s at @s run kill @s

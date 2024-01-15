##
 # seeker_minecraft_crafting_table.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/seeker_minecraft_crafting_table/default

execute as @s at @s run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:bat_spawn_egg", tag: {display: {Name: '{"text":"Seeker Minecraft Crafting Table"}'}, EntityTag: {id: "minecraft:bat", CustomName: '{"text":"Seeker Minecraft Crafting Table"}', DeathLootTable: "empty", Invulnerable: true, NoAI: true, NoGravity: true, Silent: true, Tags: ["spawner_SMCT"]}, Enchantments: [{}]}, Count: 1b}]}

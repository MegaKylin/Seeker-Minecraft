##
 # far_view_helmet_netherite.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/seeker_minecraft_crafting_table/default

execute as @s at @s run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:netherite_helmet", tag: {display: {Name: '{"text":"Far View Helmet"}'}, Tags: ["FVH"]}, Count: 1b}]}

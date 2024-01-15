##
 # knock_back_rod_2.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/seeker_minecraft_crafting_table/default

execute as @s at @s run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:blaze_rod", tag: {display: {Name: '{"text":"Knock Back Rod II"}'}, Tags: ["KBR_II"], Enchantments: [{id: "knockback", lvl: 10}]}, Count: 1b}]}

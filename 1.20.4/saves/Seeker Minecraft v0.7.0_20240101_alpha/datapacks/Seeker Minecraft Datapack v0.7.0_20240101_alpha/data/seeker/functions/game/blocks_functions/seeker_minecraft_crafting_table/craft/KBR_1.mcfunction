##
 # knock_back_rod_1.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/seeker_minecraft_crafting_table/default

execute as @s at @s run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:blaze_rod", tag: {display: {Name: '{"text":"Knock Back Rod I"}'}, Tags: ["KBR_I"], Enchantments: [{id: "knockback", lvl: 5}]}, Count: 1b}]}

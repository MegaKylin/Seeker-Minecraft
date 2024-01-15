##
 # create_Flare_I.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/seeker_minecraft_crafting_table/default

execute as @s at @s run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare I"}'}, Tags: ["Flare_I"], Enchantments: [{id: "fire_aspect", lvl: 1}]}, Count: 1b}]}

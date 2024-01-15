##
 # flare_2.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/seeker_minecraft_crafting_table/default

execute as @s at @s run data merge block ~ ~ ~ {Items: [{Slot: 4b, id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare II"}'}, Tags: ["Flare_II"], Enchantments: [{id: "fire_aspect", lvl: 2}]}, Count: 1b}]}

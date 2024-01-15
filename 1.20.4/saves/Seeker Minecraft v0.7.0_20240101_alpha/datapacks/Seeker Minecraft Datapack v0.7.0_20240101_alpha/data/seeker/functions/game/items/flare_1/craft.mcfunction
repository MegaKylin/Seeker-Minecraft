##
 # craft.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/hand/flare_1

execute as @s at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:snowball", tag: {display: {Name: '{"text":"Flare I"}'}, Tags: ["Flare_I"], Enchantments: [{id: "fire_aspect", lvl: 1}]}, Count: 1b}, Invulnerable: true, Age: -32768, Tags: ["Item_Flare_I"]}

execute as @s at @s run kill @e[type=item,nbt={Item: {id: "minecraft:gunpowder", Count: 1b}},distance=..0.5]
execute as @s at @s run kill @e[type=item,nbt={Item: {id: "minecraft:glowstone_dust", Count: 1b}},distance=..0.5]
execute as @s at @s run kill @s

##
 # craft.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:effects/craft/hand/knock_back_rod_1

execute as @s at @s run summon minecraft:item ~ ~ ~ {Item: {id: "minecraft:blaze_rod", tag: {display: {Name: '{"text":"Knock Back Rod I"}'}, Enchantments: [{id: "knockback", lvl: 5}]}, Count: 1b}, Invulnerable: true, Age: -32768, Tags: ["Item_Knock_Back_Rod_I"]}

execute as @s at @s run kill @e[type=item,nbt={Item: {id: "minecraft:gunpowder", Count: 1b}},distance=..0.5]
execute as @s at @s run kill @e[type=item,nbt={Item: {id: "minecraft:redstone", Count: 1b}},distance=..0.5]
execute as @s at @s run kill @s

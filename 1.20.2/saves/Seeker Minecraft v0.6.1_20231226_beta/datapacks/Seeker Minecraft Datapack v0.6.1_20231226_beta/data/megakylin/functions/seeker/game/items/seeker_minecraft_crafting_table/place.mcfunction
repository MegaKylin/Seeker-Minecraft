##
 # place.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName: '{"text":"Seeker Minecraft Crafting Table"}', CustomNameVisible:true, Invisible: true, Invulnerable: true, NoGravity: true, Tags: ["SMCT"]}
execute as @s at @s run setblock ~ ~ ~ minecraft:dispenser[facing=up]
kill @s

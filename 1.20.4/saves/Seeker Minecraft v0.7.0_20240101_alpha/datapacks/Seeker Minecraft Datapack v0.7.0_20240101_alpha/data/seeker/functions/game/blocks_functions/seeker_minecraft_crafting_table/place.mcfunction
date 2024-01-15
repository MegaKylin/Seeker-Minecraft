##
 # place.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["SMCT"]}
execute as @s at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomName: '{"text":"Seeker Minecraft Crafting Table"}', CustomNameVisible: true, Invisible: true, Invulnerable: true, Marker: true, NoGravity: true, Tags: ["SMCT_name"]}
execute as @s at @s run setblock ~ ~ ~ minecraft:dispenser[facing=up]
kill @s

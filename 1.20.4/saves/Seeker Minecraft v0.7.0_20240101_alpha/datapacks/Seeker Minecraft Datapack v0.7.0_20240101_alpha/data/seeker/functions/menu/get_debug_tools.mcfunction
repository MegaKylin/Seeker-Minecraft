##
 # get_debug_tools.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tag @e[tag=SMS] add giving

give @s minecraft:crafting_table 1
give @s minecraft:paper 2
give @s minecraft:blaze_rod 2
give @s minecraft:netherite_helmet 1

give @s minecraft:spyglass 3
give @s minecraft:gunpowder 8
give @s minecraft:glowstone_dust 6
give @s minecraft:redstone 2
give @s minecraft:piston 4
give @s minecraft:tnt 4
give @s minecraft:redstone_lamp 1

schedule function seeker:menu/remove_giving_tag 1s

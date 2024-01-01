##
 # get_starter_pack.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @s[gamemode=!survival,gamemode=!adventure] run function megakylin:seeker/menu/starter_pack/get_items
execute as @s[gamemode=survival,tag=!obtained] run function megakylin:seeker/menu/starter_pack/get_items
execute as @s[gamemode=adventure,tag=!obtained] run function megakylin:seeker/menu/starter_pack/get_items

tag @s add obtained

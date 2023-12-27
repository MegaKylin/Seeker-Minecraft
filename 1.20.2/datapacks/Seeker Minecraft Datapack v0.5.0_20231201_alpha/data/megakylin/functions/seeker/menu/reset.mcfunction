##
 # reset.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @a run function megakylin:seeker/menu/clear_console
function megakylin:seeker/music/random_music
execute as @a run function megakylin:seeker/menu/components/main_menu

playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 1 1

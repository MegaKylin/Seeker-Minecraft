##
 # reset.mcfunction
 # 
 #
 # Created by MegaKylin.
##

execute as @a run function seeker:menu/clear_console
advancement grant @a only seeker:authors_message
function seeker:music/random_music
execute as @a run function seeker:menu/components/main_menu

playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1 1 1

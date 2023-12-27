##
 # start.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tag @e[tag=SMS] add running

function megakylin:seeker/menu/clear_console
execute if entity @e[tag=SMS,tag=!disable_music] run function megakylin:seeker/music/stop
function megakylin:seeker/music/random_music
function megakylin:seeker/menu/components/main_menu

playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 1 1

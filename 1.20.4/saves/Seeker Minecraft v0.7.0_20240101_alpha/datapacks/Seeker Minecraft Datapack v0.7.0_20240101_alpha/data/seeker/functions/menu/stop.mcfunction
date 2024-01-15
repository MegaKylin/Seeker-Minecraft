##
 # stop.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tag @e[tag=SMS] remove running

function seeker:menu/clear_console
execute if entity @e[tag=SMS,tag=!disable_music] run function seeker:music/stop
function seeker:menu/components/main_menu

playsound block.note_block.bell block @s ~ ~ ~ 1 1 1

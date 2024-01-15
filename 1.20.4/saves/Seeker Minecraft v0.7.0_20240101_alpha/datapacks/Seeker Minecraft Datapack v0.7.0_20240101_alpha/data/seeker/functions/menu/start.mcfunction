##
 # start.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tag @e[tag=SMS] add running

function seeker:menu/clear_console
advancement grant @a only seeker:new_journey
execute if entity @e[tag=SMS,tag=!disable_music] run function seeker:music/stop
function seeker:music/random_music
function seeker:menu/components/main_menu

playsound minecraft:block.note_block.bell block @s ~ ~ ~ 1 1 1

##
 # open_soundtracks.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:menu/clear_console
function seeker:menu/components/soundtracks_page_1

tag @s add is_checking_soundtrack
schedule function seeker:menu/remove_checking_tag 60s

playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1 1

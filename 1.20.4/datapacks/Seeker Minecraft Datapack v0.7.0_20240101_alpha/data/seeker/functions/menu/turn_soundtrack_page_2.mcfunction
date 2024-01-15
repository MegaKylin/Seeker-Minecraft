##
 # turn_soundtrack_page_2.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function seeker:menu/clear_console
function seeker:menu/components/soundtracks_page_2

tag @s add is_checking_soundtrack
schedule function seeker:menu/remove_checking_tag 60s

playsound minecraft:item.book.page_turn block @s ~ ~ ~ 4 1 1

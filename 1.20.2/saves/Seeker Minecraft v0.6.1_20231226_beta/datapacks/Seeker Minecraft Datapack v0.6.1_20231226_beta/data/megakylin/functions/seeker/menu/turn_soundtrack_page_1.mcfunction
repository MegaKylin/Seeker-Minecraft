##
 # turn_soundtrack_page_1.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function megakylin:seeker/menu/clear_console
function megakylin:seeker/menu/components/soundtracks_page_1

tag @s add is_checking_soundtrack
schedule function megakylin:seeker/menu/remove_checking_tag 60s

playsound minecraft:item.book.page_turn block @s ~ ~ ~ 4 1 1

##
 # open_main_menu.mcfunction
 # 
 #
 # Created by MegaKylin.
##

function megakylin:seeker/menu/clear_console
function megakylin:seeker/menu/components/main_menu

tag @s remove is_checking_soundtrack

playsound minecraft:ui.button.click block @s ~ ~ ~ 1 1 1

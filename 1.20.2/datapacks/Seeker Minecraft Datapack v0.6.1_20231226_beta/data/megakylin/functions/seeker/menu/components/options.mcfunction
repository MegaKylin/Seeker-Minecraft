##
 # options.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n              ⊱ Options ⊰", "color": "aqua"}
tellraw @s [{"text": "=======================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/open_main_menu"}}]

tellraw @s {"text": "       ---- Game ----", "bold": true, "color": "white"}

tellraw @s {"text": "\n       ---- Rules ----", "bold": true, "color": "white"}

tellraw @s {"text": "\n      ---- Sounds ----", "bold": true, "color": "white"}
function megakylin:seeker/menu/options/items/music

tellraw @s {"text": "\n========================\n", "bold": true, "color": "yellow"}

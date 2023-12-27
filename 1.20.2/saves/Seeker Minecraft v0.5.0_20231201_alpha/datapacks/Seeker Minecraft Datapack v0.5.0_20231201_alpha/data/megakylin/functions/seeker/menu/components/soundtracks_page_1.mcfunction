##
 # soundtracks_page_1.mcfunction
 # 
 #
 # Created by MegaKylin.
 # ☑☒▶■
##

tellraw @s {"text": "\n            ⊱ Soundtracks ⊰", "color": "red"}
tellraw @s [{"text": "=======================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/open_main_menu"}}]

function megakylin:seeker/menu/soundtracks/items/aduro
function megakylin:seeker/menu/soundtracks/items/afterlife_city
function megakylin:seeker/menu/soundtracks/items/alien_technology
function megakylin:seeker/menu/soundtracks/items/anomaly_detected
function megakylin:seeker/menu/soundtracks/items/battle_of_kings
function megakylin:seeker/menu/soundtracks/items/beyond_the_stars
function megakylin:seeker/menu/soundtracks/items/cloister_of_redemption
function megakylin:seeker/menu/soundtracks/items/dance_of_the_pixies
function megakylin:seeker/menu/soundtracks/items/dystopia
function megakylin:seeker/menu/soundtracks/items/ecstatic_wave

tellraw @s [{"text": "\n=====  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "gray"}, {"text": " Page - 1/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Next Page"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/turn_soundtrack_page_2"}}, {"text": "  =====\n", "bold": true, "color": "yellow"}]

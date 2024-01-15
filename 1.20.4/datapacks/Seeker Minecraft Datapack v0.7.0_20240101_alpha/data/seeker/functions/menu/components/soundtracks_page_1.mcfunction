##
 # soundtracks_page_1.mcfunction
 # 
 #
 # Created by MegaKylin.
 # ☑☒▶■
##

tellraw @s {"text": "\n            ⊱ Soundtracks ⊰", "color": "red"}
tellraw @s [{"text": "=======================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_main_menu"}}]

function seeker:menu/soundtracks/items/aduro
function seeker:menu/soundtracks/items/afterlife_city
function seeker:menu/soundtracks/items/alien_technology
function seeker:menu/soundtracks/items/anomaly_detected
function seeker:menu/soundtracks/items/battle_of_kings
function seeker:menu/soundtracks/items/beyond_the_stars
function seeker:menu/soundtracks/items/cloister_of_redemption
function seeker:menu/soundtracks/items/dance_of_the_pixies
function seeker:menu/soundtracks/items/dystopia
function seeker:menu/soundtracks/items/ecstatic_wave

tellraw @s [{"text": "\n=====  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "gray"}, {"text": " Page - 1/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Next Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_soundtrack_page_2"}}, {"text": "  =====\n", "bold": true, "color": "yellow"}]

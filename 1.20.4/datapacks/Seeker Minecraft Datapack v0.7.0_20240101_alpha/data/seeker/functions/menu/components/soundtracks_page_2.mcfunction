##
 # soundtracks_page_2.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n            ⊱ Soundtracks ⊰", "color": "red"}
tellraw @s [{"text": "=======================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_main_menu"}}]

function seeker:menu/soundtracks/items/electroids
function seeker:menu/soundtracks/items/ephemeral_reign
function seeker:menu/soundtracks/items/escape_from_the_temple
function seeker:menu/soundtracks/items/fire_within
function seeker:menu/soundtracks/items/gold_coast
function seeker:menu/soundtracks/items/incursion
function seeker:menu/soundtracks/items/infected_euphoria
function seeker:menu/soundtracks/items/leap_of_faith
function seeker:menu/soundtracks/items/lock_and_load
function seeker:menu/soundtracks/items/milkshake

tellraw @s [{"text": "\n=====  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Previous Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_soundtrack_page_1"}}, {"text": " Page - 2/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Next Page"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/turn_soundtrack_page_3"}}, {"text": "  =====\n", "bold": true, "color": "yellow"}]

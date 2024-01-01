##
 # soundtracks_page_3.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n            ⊱ Soundtracks ⊰", "color": "red"}
tellraw @s [{"text": "=======================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/open_main_menu"}}]

function megakylin:seeker/menu/soundtracks/items/queen_of_the_night
function megakylin:seeker/menu/soundtracks/items/rallying_the_defense
function megakylin:seeker/menu/soundtracks/items/september_sky
function megakylin:seeker/menu/soundtracks/items/setting_sail
function megakylin:seeker/menu/soundtracks/items/sexergetic
function megakylin:seeker/menu/soundtracks/items/skirt_shaker
function megakylin:seeker/menu/soundtracks/items/streets_of_the_unknown
function megakylin:seeker/menu/soundtracks/items/sunrise
function megakylin:seeker/menu/soundtracks/items/the_arcade
function megakylin:seeker/menu/soundtracks/items/the_end_of_mankind

tellraw @s [{"text": "\n=====  ", "bold": true, "color": "yellow"}, {"text": "⋘", "bold": true, "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Previous Page"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/turn_soundtrack_page_2"}}, {"text": " Page - 3/3 ", "bold": false, "color": "gold"}, {"text": "⋙", "bold": true, "color": "gray"}, {"text": "  =====\n", "bold": true, "color": "yellow"}]

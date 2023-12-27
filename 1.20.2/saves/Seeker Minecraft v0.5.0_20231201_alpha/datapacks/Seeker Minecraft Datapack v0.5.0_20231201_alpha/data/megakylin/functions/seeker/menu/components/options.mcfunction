##
 # options.mcfunction
 # 
 #
 # Created by MegaKylin.
##

tellraw @s {"text": "\n              ⊱ Options ⊰", "color": "aqua"}
tellraw @s [{"text": "=======================", "bold": true, "color": "yellow"}, {"text": "☒\n", "color": "red", "bold": false, "hoverEvent": {"action": "show_text", "contents": "Back to Main Menu"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/open_main_menu"}}]

tellraw @s {"text": "       ---- Game ----\n", "bold": true, "color": "white"}

tellraw @s {"text": "       ---- Rules ----\n", "bold": true, "color": "white"}

tellraw @s {"text": "      ---- Sounds ----", "bold": true, "color": "white"}
execute if entity @e[tag=SMS,tag=!disable_music] run tellraw @s [{"text": "  Play Soundtrack    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Playing soundtrack when seeker mode is running? "}}, {"text": "[Off]  ", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Click to Disable Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/options/disable_music"}}, {"text": "[On]", "color": "green", "hoverEvent": {"action": "show_text", "contents": "Current State"}}]
execute if entity @e[tag=SMS,tag=disable_music] run tellraw @s [{"text": "  Play Soundtrack    ", "color": "white", "hoverEvent": {"action": "show_text", "contents": "Playing soundtrack when seeker mode is running? "}}, {"text": "[Off]  ", "color": "red", "hoverEvent": {"action": "show_text", "contents": "Current State"}}, {"text": "[On]", "color": "gray", "hoverEvent": {"action": "show_text", "contents": "Click to Enable Soundtrack"}, "clickEvent": {"action": "run_command", "value": "/function megakylin:seeker/menu/options/enable_music"}}]

tellraw @s {"text": "\n========================\n", "bold": true, "color": "yellow"}

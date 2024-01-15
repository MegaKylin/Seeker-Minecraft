##
 # main_menu.mcfunction
 #
 #
 # Created by MegaKylin.
 # ※✧✦☆★⚐⚑✓✔✗✘▷▶■◇⚝♪♩♫⚜⚘☣⚙☸❁❂
##

tellraw @s [{"text": "\n          ", "color": "blue"}, {"translate": "seeker.menu.main_menu.title", "clickEvent": {"action": "run_command", "value": "/execute if entity @s[name=\"MegaKylin\"] run function seeker:menu/get_debug_tools"}}, {"text": "\n"}]

tellraw @s [{"text": "                ", "color": "gold"}, {"text": "⊱ "}, {"translate": "seeker.menu.main_menu.name"}, {"text": " ⊰"}]
tellraw @s {"text": "========================\n", "bold": true, "color": "dark_green"}

execute if entity @e[tag=SMS,tag=!running] run tellraw @s [{"text": "  ▶  ", "color": "red"}, {"text": "Start Seeker Mode\n", "color": "yellow", "hoverEvent": {"action": "show_text", "contents": "Click to Start"}, "underlined": true, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/start"}}]
execute if entity @e[tag=SMS,tag=running] run tellraw @s [{"text": "  ■  ", "color": "green"}, {"text": "Stop Seeker Mode\n", "color": "yellow", "underlined": true, "hoverEvent": {"action": "show_text", "contents": "Click to Stop"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/stop"}}]

tellraw @s [{"text": "  ☆  ", "color": "white"}, {"text": "Rules & Tutorials", "color": "green", "hoverEvent": {"action": "show_text", "contents": "Click to Check Rules & Tutorials"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_rules_and_tutorials"}}]
tellraw @s [{"text": "  ⚙  ", "color": "white"}, {"text": "Options", "color": "aqua", "hoverEvent": {"action": "show_text", "contents": "Click to Change Options"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_options"}}]
tellraw @s [{"text": "  ♫  ", "color": "white"}, {"text": "Soundtracks", "color": "red", "hoverEvent": {"action": "show_text", "contents": "Click to Check Soundtracks"}, "clickEvent": {"action": "run_command", "value": "/function seeker:menu/open_soundtracks"}}]
tellraw @s [{"text": "  ▷  ", "color": "white"}, {"text": "Promotion Video", "color": "light_purple", "hoverEvent": {"action": "show_text", "contents": "TBD"}}]
tellraw @s [{"text": "  ✧  ", "color": "white"}, {"text": "Information & Credits", "color": "gold", "hoverEvent": {"action": "show_text", "contents": "TBD"}}]

tellraw @s {"text": "\n========================\n", "bold": true, "color": "dark_green"}

tellraw @s [{"text": "        ", "color": "dark_red"}, {"translate": "seeker.menu.main_menu.version"}]
tellraw @s [{"text": "         ", "color": "dark_blue"}, {"translate": "seeker.menu.main_menu.author"}, {"text": "MegaKylin", "color": "dark_blue", "clickEvent": {"action": "run_command", "value": "/execute if entity @s[name=\"MegaKylin\"] run function seeker:menu/change_partical_state"}}, {"text": "\n"}]
